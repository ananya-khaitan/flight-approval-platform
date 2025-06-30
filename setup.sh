#!/usr/bin/env bash
set -euo pipefail

ROOT="$(pwd)"
SPEC="flight_auth.yml"

if [ ! -f "$SPEC" ]; then
  echo "ERROR: Place your flight_auth.yml in $ROOT and re-run."
  exit 1
fi

echo "🤖  Creating backend..."
mkdir -p backend/bin
cp "$SPEC" backend/
cat > backend/pubspec.yaml << 'EOF'
name: flight_approval_backend
description: Mock UAS Flight Approval Service
environment:
  sdk: '>=3.8.0 <4.0.0'
dependencies:
  shelf: ^1.4.0
  shelf_router: ^1.1.0
EOF

cat > backend/bin/server.dart << 'EOF'
import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;

void main() async {
  final router = Router()
    ..post('/flight-authorizations', (Request req) async {
      final payload = json.decode(await req.readAsString());
      final resp = {
        'forecast_time': DateTime.now().toUtc().toIso8601String(),
        'weather_data': [],
        'source': 'MockServer',
        'last_updated': DateTime.now().toUtc().toIso8601String(),
      };
      return Response.ok(json.encode(resp),
        headers: {'content-type':'application/json'});
    });

  final handler = Pipeline()
    .addMiddleware(logRequests())
    .addHandler(router);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Mock server running on http://\${server.address.host}:\${server.port}');
}
EOF

echo "🤖  Creating frontend..."
mkdir -p frontend
cp "$SPEC" frontend/
cd frontend

# Flutter create (defaults into current folder)
flutter create . --org com.autrik --project-name app

# Overwrite pubspec.yaml
cat > pubspec.yaml << 'EOF'
name: app
description: Flight Approval Frontend
publish_to: 'none'
environment:
  sdk: '>=3.8.0 <4.0.0'
  flutter: '>=3.0.0'

dependencies:
  flutter:
    sdk: flutter
  dio: ^5.0.0

dev_dependencies:
  flutter_test:
    sdk: flutter
  build_runner: ^2.3.0
  retrofit_generator: ^9.2.0
  json_serializable: ^6.9.5

flutter:
  uses-material-design: true
EOF

flutter pub get

echo "🤖  Generating API client + models with OpenAPI Generator..."
openapi-generator-cli generate \
  -i flight_auth.yml \
  -g dart-dio \
  -o . \
  --additional-properties=dio=true,dartGeneratorName=ApiClient,pubName=app,pubVersion=1.0.0

echo "✅  Setup complete!"

echo "To run backend: cd backend && dart pub get && dart run bin/server.dart"
echo "To run frontend: cd frontend && flutter run"

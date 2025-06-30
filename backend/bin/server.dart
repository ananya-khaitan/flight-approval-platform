import 'dart:convert';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;

// A simple CORS middleware
Middleware corsHeaders() {
  return (Handler inner) {
    return (Request request) async {
      // Handle preflight OPTIONS
      if (request.method == 'OPTIONS') {
        return Response.ok(
          '',
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
            'Access-Control-Allow-Headers':
                'Origin, Content-Type, X-Auth-Token',
          },
        );
      }
      // For other requests, forward and then add CORS headers
      final resp = await inner(request);
      return resp.change(
        headers: {...resp.headers, 'Access-Control-Allow-Origin': '*'},
      );
    };
  };
}

void main() async {
  final router = Router();

  router.post('/flight-authorizations', (Request req) async {
    final payload = json.decode(await req.readAsString());
    final response = {
      "authorization_id": "AUTH123",
      "status": "accepted",
      "request_time": "2025-06-28T12:00:00Z",
      "response_time": "2025-06-28T12:00:01Z",
      "terms_and_conditions": ["Fly below 120m", "Avoid airports"],
      "deviation_thresholds": {
        "horizontal": 50.0,
        "vertical": 20.0,
        "temporal": 30.0,
      },
      "rejection_reasons": null,
      "alternative_authorization": null,
    }
    // …other mock fields…
    ;
    return Response.ok(
      json.encode(response),
      headers: {'content-type': 'application/json'},
    );
  });

  final handler = const Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(corsHeaders()) // ← insert CORS
      .addHandler(router);

  final server = await io.serve(handler, 'localhost', 8080);
  print('Mock server listening on http://localhost:8080');
}

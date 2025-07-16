import 'dart:convert';
import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:uuid/uuid.dart';

/// CORS middleware
Middleware cors() {
  return (Handler handler) {
    return (Request req) async {
      if (req.method == 'OPTIONS') {
        return Response.ok(
          '',
          headers: {
            'Access-Control-Allow-Origin': '*',
            'Access-Control-Allow-Methods': 'GET,POST,OPTIONS',
            'Access-Control-Allow-Headers': 'Content-Type',
          },
        );
      }
      final res = await handler(req);
      return res.change(
        headers: {...res.headers, 'Access-Control-Allow-Origin': '*'},
      );
    };
  };
}

/// Evaluate request map against your rules
bool evaluate(Map<String, dynamic> jsonReq, List<String> reasons) {
  bool ok = true;

  final start = DateTime.parse(jsonReq['planned_start_time']).toUtc();
  final end = DateTime.parse(jsonReq['planned_end_time']).toUtc();

  if (start.hour < 6 || end.hour > 18) {
    reasons.add('Flights only allowed 06:00–18:00 UTC');
    ok = false;
  }

  final traj = jsonReq['flight_trajectory'] as Map<String, dynamic>;
  final firstPoint =
      (traj['trajectory_points'] as List).first as Map<String, dynamic>;
  final pos = firstPoint['position'] as Map<String, dynamic>;
  final lat = (pos['latitude'] as num).toDouble();
  final alt = (pos['altitude'] as num).toDouble();

  if (lat < 40.0 || lat > 41.0) {
    reasons.add('Latitude $lat outside 40.0–41.0');
    ok = false;
  }
  if (alt < 20.0 || alt > 120.0) {
    reasons.add('Altitude $alt m outside 20–120 m');
    ok = false;
  }

  final dev = traj['deviation_thresholds'] as Map<String, dynamic>;
  final temporal = (dev['temporal'] as num).toDouble();
  if (temporal > 300.0) {
    reasons.add('Temporal deviation > 300 s');
    ok = false;
  }

  if (jsonReq['weather_requirements'] != null) {
    final w = jsonReq['weather_requirements'] as Map<String, dynamic>;
    final maxWind = (w['max_wind_speed'] as num?)?.toDouble();
    final minVis = (w['min_visibility'] as num?)?.toDouble();

    if (maxWind != null && maxWind > 50.0) {
      reasons.add('Wind speed > 50 m/s');
      ok = false;
    }
    if (minVis != null && minVis < 2000.0) {
      reasons.add('Visibility < 2000 m');
      ok = false;
    }
  }

  if (start.isBefore(DateTime.now().toUtc())) {
    reasons.add('Planned start time is in the past');
    ok = false;
  }

  return ok;
}

void main() async {
  final router = Router()
    ..post('/flight-authorizations', (Request req) async {
      try {
        final bodyString = await req.readAsString();
        final jsonReq = json.decode(bodyString) as Map<String, dynamic>;

        final reasons = <String>[];
        final accepted = evaluate(jsonReq, reasons);

        final response = {
          'authorization_id': Uuid().v4(),
          'status': accepted ? 'accepted' : 'rejected',
          'request_time': DateTime.now().toUtc().toIso8601String(),
          'response_time': DateTime.now().toUtc().toIso8601String(),
          'terms_and_conditions': ['Fly below 120 m', 'Avoid airports'],
          'deviation_thresholds':
              jsonReq['flight_trajectory']['deviation_thresholds'],
          'rejection_reasons': accepted ? null : reasons,
        };

        return Response.ok(
          json.encode(response),
          headers: {'content-type': 'application/json'},
        );
      } catch (e) {
        return Response.internalServerError(body: 'Server error');
      }
    });

  final handler = Pipeline()
      .addMiddleware(logRequests())
      .addMiddleware(cors())
      .addHandler(router);

  final server = await io.serve(handler, 'localhost', 8080);
  stdout.writeln('🚀 Server listening on http://localhost:${server.port}');
}

import 'package:test/test.dart';
import 'package:app/app.dart';


/// tests for FlightActivationApi
void main() {
  final instance = App().getFlightActivationApi();

  group(FlightActivationApi, () {
    // Activate Flight Authorization
    //
    // Activate an accepted flight authorization according to Article 10(5).  This triggers the provision of tactical services like traffic information and conformance monitoring. 
    //
    //Future<ActivationResponse> activateFlightAuthorization(String authorizationId, ActivationRequest activationRequest) async
    test('test activateFlightAuthorization', () async {
      // TODO
    });

    // End Active Flight
    //
    // End an active flight authorization. This terminates the provision of tactical services according to Article 10(10). 
    //
    //Future<EndFlightAuthorization200Response> endFlightAuthorization(String authorizationId, { EndFlightAuthorizationRequest endFlightAuthorizationRequest }) async
    test('test endFlightAuthorization', () async {
      // TODO
    });

  });
}

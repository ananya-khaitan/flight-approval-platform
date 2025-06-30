import 'package:test/test.dart';
import 'package:app/app.dart';


/// tests for FlightAuthorizationApi
void main() {
  final instance = App().getFlightAuthorizationApi();

  group(FlightAuthorizationApi, () {
    // Get Flight Authorization Details
    //
    // Retrieve detailed information about a specific flight authorization
    //
    //Future<FlightAuthorizationDetails> getFlightAuthorization(String authorizationId) async
    test('test getFlightAuthorization', () async {
      // TODO
    });

    // List Flight Authorizations
    //
    // Retrieve list of flight authorizations for the authenticated UAS operator
    //
    //Future<ListFlightAuthorizations200Response> listFlightAuthorizations({ String status, DateTime fromDate, DateTime toDate }) async
    test('test listFlightAuthorizations', () async {
      // TODO
    });

    // Submit UAS Flight Authorization Request
    //
    // Submit a request for UAS flight authorization. The USSP will check if the request is complete,  correct, and free of intersection with other authorized flights according to Article 10(2). 
    //
    //Future<FlightAuthorizationResponse> submitFlightAuthorizationRequest(FlightAuthorizationRequest flightAuthorizationRequest) async
    test('test submitFlightAuthorizationRequest', () async {
      // TODO
    });

    // Update Flight Authorization
    //
    // Update an existing flight authorization. Updates are only allowed if they don't create  new conflicts according to Article 10(10). 
    //
    //Future<FlightAuthorizationResponse> updateFlightAuthorization(String authorizationId, FlightAuthorizationUpdateRequest flightAuthorizationUpdateRequest) async
    test('test updateFlightAuthorization', () async {
      // TODO
    });

    // Withdraw Flight Authorization
    //
    // Withdraw a flight authorization. Can be done by UAS operator or USSP according to Article 10(10) when conflicts arise with higher priority flights or emergency situations. 
    //
    //Future withdrawFlightAuthorization(String authorizationId, { WithdrawFlightAuthorizationRequest withdrawFlightAuthorizationRequest }) async
    test('test withdrawFlightAuthorization', () async {
      // TODO
    });

  });
}

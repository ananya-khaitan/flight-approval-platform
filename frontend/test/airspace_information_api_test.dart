import 'package:test/test.dart';
import 'package:app/app.dart';


/// tests for AirspaceInformationApi
void main() {
  final instance = App().getAirspaceInformationApi();

  group(AirspaceInformationApi, () {
    // Get Current Airspace Restrictions
    //
    // Retrieve current airspace restrictions and temporary limitations  according to Article 10(7). 
    //
    //Future<GetAirspaceRestrictions200Response> getAirspaceRestrictions({ String area, DateTime timeFrom, DateTime timeTo }) async
    test('test getAirspaceRestrictions', () async {
      // TODO
    });

  });
}

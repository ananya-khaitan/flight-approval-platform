import 'package:test/test.dart';
import 'package:app/app.dart';


/// tests for WeatherInformationApi
void main() {
  final instance = App().getWeatherInformationApi();

  group(WeatherInformationApi, () {
    // Get Weather Information
    //
    // Retrieve weather information for flight authorization processing  according to Article 10(3). 
    //
    //Future<WeatherInformation> getWeatherInformation(String area, DateTime timeFrom, DateTime timeTo) async
    test('test getWeatherInformation', () async {
      // TODO
    });

  });
}

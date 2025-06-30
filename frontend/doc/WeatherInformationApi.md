# app.api.WeatherInformationApi

## Load the API package
```dart
import 'package:app/api.dart';
```

All URIs are relative to *https://api.ussp-provider.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getWeatherInformation**](WeatherInformationApi.md#getweatherinformation) | **GET** /weather-information | Get Weather Information


# **getWeatherInformation**
> WeatherInformation getWeatherInformation(area, timeFrom, timeTo)

Get Weather Information

Retrieve weather information for flight authorization processing  according to Article 10(3). 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getWeatherInformationApi();
final String area = area_example; // String | Geographic bounding box (minLat,minLon,maxLat,maxLon)
final DateTime timeFrom = 2013-10-20T19:20:30+01:00; // DateTime | Start time for weather forecast (ISO 8601)
final DateTime timeTo = 2013-10-20T19:20:30+01:00; // DateTime | End time for weather forecast (ISO 8601)

try {
    final response = api.getWeatherInformation(area, timeFrom, timeTo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WeatherInformationApi->getWeatherInformation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **area** | **String**| Geographic bounding box (minLat,minLon,maxLat,maxLon) | 
 **timeFrom** | **DateTime**| Start time for weather forecast (ISO 8601) | 
 **timeTo** | **DateTime**| End time for weather forecast (ISO 8601) | 

### Return type

[**WeatherInformation**](WeatherInformation.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


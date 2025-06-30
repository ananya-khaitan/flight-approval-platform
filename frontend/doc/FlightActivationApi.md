# app.api.FlightActivationApi

## Load the API package
```dart
import 'package:app/api.dart';
```

All URIs are relative to *https://api.ussp-provider.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**activateFlightAuthorization**](FlightActivationApi.md#activateflightauthorization) | **POST** /flight-authorizations/{authorizationId}/activate | Activate Flight Authorization
[**endFlightAuthorization**](FlightActivationApi.md#endflightauthorization) | **POST** /flight-authorizations/{authorizationId}/end | End Active Flight


# **activateFlightAuthorization**
> ActivationResponse activateFlightAuthorization(authorizationId, activationRequest)

Activate Flight Authorization

Activate an accepted flight authorization according to Article 10(5).  This triggers the provision of tactical services like traffic information and conformance monitoring. 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightActivationApi();
final String authorizationId = authorizationId_example; // String | Unique authorization number
final ActivationRequest activationRequest = ; // ActivationRequest | 

try {
    final response = api.activateFlightAuthorization(authorizationId, activationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightActivationApi->activateFlightAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **String**| Unique authorization number | 
 **activationRequest** | [**ActivationRequest**](ActivationRequest.md)|  | 

### Return type

[**ActivationResponse**](ActivationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **endFlightAuthorization**
> EndFlightAuthorization200Response endFlightAuthorization(authorizationId, endFlightAuthorizationRequest)

End Active Flight

End an active flight authorization. This terminates the provision of tactical services according to Article 10(10). 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightActivationApi();
final String authorizationId = authorizationId_example; // String | Unique authorization number
final EndFlightAuthorizationRequest endFlightAuthorizationRequest = ; // EndFlightAuthorizationRequest | 

try {
    final response = api.endFlightAuthorization(authorizationId, endFlightAuthorizationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightActivationApi->endFlightAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **String**| Unique authorization number | 
 **endFlightAuthorizationRequest** | [**EndFlightAuthorizationRequest**](EndFlightAuthorizationRequest.md)|  | [optional] 

### Return type

[**EndFlightAuthorization200Response**](EndFlightAuthorization200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


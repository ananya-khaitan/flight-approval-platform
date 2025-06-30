# app.api.FlightAuthorizationApi

## Load the API package
```dart
import 'package:app/api.dart';
```

All URIs are relative to *https://api.ussp-provider.com/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFlightAuthorization**](FlightAuthorizationApi.md#getflightauthorization) | **GET** /flight-authorizations/{authorizationId} | Get Flight Authorization Details
[**listFlightAuthorizations**](FlightAuthorizationApi.md#listflightauthorizations) | **GET** /flight-authorizations | List Flight Authorizations
[**submitFlightAuthorizationRequest**](FlightAuthorizationApi.md#submitflightauthorizationrequest) | **POST** /flight-authorizations | Submit UAS Flight Authorization Request
[**updateFlightAuthorization**](FlightAuthorizationApi.md#updateflightauthorization) | **PUT** /flight-authorizations/{authorizationId} | Update Flight Authorization
[**withdrawFlightAuthorization**](FlightAuthorizationApi.md#withdrawflightauthorization) | **DELETE** /flight-authorizations/{authorizationId} | Withdraw Flight Authorization


# **getFlightAuthorization**
> FlightAuthorizationDetails getFlightAuthorization(authorizationId)

Get Flight Authorization Details

Retrieve detailed information about a specific flight authorization

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightAuthorizationApi();
final String authorizationId = authorizationId_example; // String | Unique authorization number

try {
    final response = api.getFlightAuthorization(authorizationId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightAuthorizationApi->getFlightAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **String**| Unique authorization number | 

### Return type

[**FlightAuthorizationDetails**](FlightAuthorizationDetails.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **listFlightAuthorizations**
> ListFlightAuthorizations200Response listFlightAuthorizations(status, fromDate, toDate)

List Flight Authorizations

Retrieve list of flight authorizations for the authenticated UAS operator

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightAuthorizationApi();
final String status = status_example; // String | Filter by authorization status
final DateTime fromDate = 2013-10-20T19:20:30+01:00; // DateTime | Filter authorizations from this date (ISO 8601)
final DateTime toDate = 2013-10-20T19:20:30+01:00; // DateTime | Filter authorizations to this date (ISO 8601)

try {
    final response = api.listFlightAuthorizations(status, fromDate, toDate);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightAuthorizationApi->listFlightAuthorizations: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **status** | **String**| Filter by authorization status | [optional] 
 **fromDate** | **DateTime**| Filter authorizations from this date (ISO 8601) | [optional] 
 **toDate** | **DateTime**| Filter authorizations to this date (ISO 8601) | [optional] 

### Return type

[**ListFlightAuthorizations200Response**](ListFlightAuthorizations200Response.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **submitFlightAuthorizationRequest**
> FlightAuthorizationResponse submitFlightAuthorizationRequest(flightAuthorizationRequest)

Submit UAS Flight Authorization Request

Submit a request for UAS flight authorization. The USSP will check if the request is complete,  correct, and free of intersection with other authorized flights according to Article 10(2). 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightAuthorizationApi();
final FlightAuthorizationRequest flightAuthorizationRequest = ; // FlightAuthorizationRequest | 

try {
    final response = api.submitFlightAuthorizationRequest(flightAuthorizationRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightAuthorizationApi->submitFlightAuthorizationRequest: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **flightAuthorizationRequest** | [**FlightAuthorizationRequest**](FlightAuthorizationRequest.md)|  | 

### Return type

[**FlightAuthorizationResponse**](FlightAuthorizationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateFlightAuthorization**
> FlightAuthorizationResponse updateFlightAuthorization(authorizationId, flightAuthorizationUpdateRequest)

Update Flight Authorization

Update an existing flight authorization. Updates are only allowed if they don't create  new conflicts according to Article 10(10). 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightAuthorizationApi();
final String authorizationId = authorizationId_example; // String | Unique authorization number
final FlightAuthorizationUpdateRequest flightAuthorizationUpdateRequest = ; // FlightAuthorizationUpdateRequest | 

try {
    final response = api.updateFlightAuthorization(authorizationId, flightAuthorizationUpdateRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FlightAuthorizationApi->updateFlightAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **String**| Unique authorization number | 
 **flightAuthorizationUpdateRequest** | [**FlightAuthorizationUpdateRequest**](FlightAuthorizationUpdateRequest.md)|  | 

### Return type

[**FlightAuthorizationResponse**](FlightAuthorizationResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **withdrawFlightAuthorization**
> withdrawFlightAuthorization(authorizationId, withdrawFlightAuthorizationRequest)

Withdraw Flight Authorization

Withdraw a flight authorization. Can be done by UAS operator or USSP according to Article 10(10) when conflicts arise with higher priority flights or emergency situations. 

### Example
```dart
import 'package:app/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKey = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//defaultApiClient.getAuthentication<ApiKeyAuth>('apiKeyAuth').apiKeyPrefix = 'Bearer';

final api = App().getFlightAuthorizationApi();
final String authorizationId = authorizationId_example; // String | Unique authorization number
final WithdrawFlightAuthorizationRequest withdrawFlightAuthorizationRequest = ; // WithdrawFlightAuthorizationRequest | 

try {
    api.withdrawFlightAuthorization(authorizationId, withdrawFlightAuthorizationRequest);
} catch on DioException (e) {
    print('Exception when calling FlightAuthorizationApi->withdrawFlightAuthorization: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorizationId** | **String**| Unique authorization number | 
 **withdrawFlightAuthorizationRequest** | [**WithdrawFlightAuthorizationRequest**](WithdrawFlightAuthorizationRequest.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


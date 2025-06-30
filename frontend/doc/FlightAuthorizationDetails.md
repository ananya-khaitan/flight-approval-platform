# app.model.FlightAuthorizationDetails

## Load the model package
```dart
import 'package:app/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**authorizationId** | **String** | Unique authorization number | 
**status** | **String** |  | 
**requestTime** | [**DateTime**](DateTime.md) | Time when request was received | 
**responseTime** | [**DateTime**](DateTime.md) | Time when response was generated | 
**termsAndConditions** | **BuiltList&lt;String&gt;** | Terms and conditions for the flight authorization | [optional] 
**deviationThresholds** | [**DeviationThresholds**](DeviationThresholds.md) |  | [optional] 
**alternativeAuthorization** | [**AlternativeAuthorization**](AlternativeAuthorization.md) |  | [optional] 
**rejectionReasons** | **BuiltList&lt;String&gt;** | Reasons for rejection (if status is rejected) | [optional] 
**originalRequest** | [**FlightAuthorizationRequest**](FlightAuthorizationRequest.md) |  | [optional] 
**currentStatus** | **String** |  | [optional] 
**activationTime** | [**DateTime**](DateTime.md) |  | [optional] 
**endTime** | [**DateTime**](DateTime.md) |  | [optional] 
**lastUpdated** | [**DateTime**](DateTime.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



# app.model.FlightAuthorizationRequest

## Load the model package
```dart
import 'package:app/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uasRegistrationNumber** | **String** | UAS registration number | 
**operatorId** | **String** | UAS operator identifier | 
**flightTrajectory** | [**FlightTrajectory4D**](FlightTrajectory4D.md) |  | 
**operationMode** | **String** | Mode of UAS operation | 
**flightType** | **String** | Type of flight according to priority rules | 
**plannedStartTime** | [**DateTime**](DateTime.md) | Planned flight start time (ISO 8601) | 
**plannedEndTime** | [**DateTime**](DateTime.md) | Planned flight end time (ISO 8601) | 
**contingencyProcedures** | [**BuiltList&lt;ContingencyProcedure&gt;**](ContingencyProcedure.md) |  | [optional] 
**weatherRequirements** | [**WeatherRequirements**](WeatherRequirements.md) |  | [optional] 
**additionalInformation** | **String** | Any additional relevant information | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



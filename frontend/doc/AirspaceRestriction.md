# app.model.AirspaceRestriction

## Load the model package
```dart
import 'package:app/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**restrictionId** | **String** |  | 
**restrictionType** | **String** |  | 
**affectedArea** | [**GeographicArea**](GeographicArea.md) |  | 
**effectivePeriod** | [**TimePeriod**](TimePeriod.md) |  | 
**altitudeLimits** | [**AirspaceRestrictionAltitudeLimits**](AirspaceRestrictionAltitudeLimits.md) |  | [optional] 
**entryRequirements** | **BuiltList&lt;String&gt;** | Special permissions or equipment required | [optional] 
**description** | **String** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)



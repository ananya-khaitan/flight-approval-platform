//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:app/src/date_serializer.dart';
import 'package:app/src/model/date.dart';

import 'package:app/src/model/activation_request.dart';
import 'package:app/src/model/activation_response.dart';
import 'package:app/src/model/airspace_restriction.dart';
import 'package:app/src/model/airspace_restriction_altitude_limits.dart';
import 'package:app/src/model/alternative_authorization.dart';
import 'package:app/src/model/conflict_response.dart';
import 'package:app/src/model/contingency_procedure.dart';
import 'package:app/src/model/deviation_thresholds.dart';
import 'package:app/src/model/end_flight_authorization200_response.dart';
import 'package:app/src/model/end_flight_authorization_request.dart';
import 'package:app/src/model/error_response.dart';
import 'package:app/src/model/flight_authorization_details.dart';
import 'package:app/src/model/flight_authorization_request.dart';
import 'package:app/src/model/flight_authorization_response.dart';
import 'package:app/src/model/flight_authorization_summary.dart';
import 'package:app/src/model/flight_authorization_update_request.dart';
import 'package:app/src/model/flight_trajectory4_d.dart';
import 'package:app/src/model/geographic_area.dart';
import 'package:app/src/model/get_airspace_restrictions200_response.dart';
import 'package:app/src/model/list_flight_authorizations200_response.dart';
import 'package:app/src/model/position3_d.dart';
import 'package:app/src/model/safe_landing_area.dart';
import 'package:app/src/model/time_period.dart';
import 'package:app/src/model/trajectory_point4_d.dart';
import 'package:app/src/model/weather_data_point.dart';
import 'package:app/src/model/weather_data_point_conditions.dart';
import 'package:app/src/model/weather_information.dart';
import 'package:app/src/model/weather_requirements.dart';
import 'package:app/src/model/weather_requirements_temperature_range.dart';
import 'package:app/src/model/withdraw_flight_authorization_request.dart';

part 'serializers.g.dart';

@SerializersFor([
  ActivationRequest,
  ActivationResponse,
  AirspaceRestriction,
  AirspaceRestrictionAltitudeLimits,
  AlternativeAuthorization,
  ConflictResponse,
  ContingencyProcedure,
  DeviationThresholds,
  EndFlightAuthorization200Response,
  EndFlightAuthorizationRequest,
  ErrorResponse,
  FlightAuthorizationDetails,
  FlightAuthorizationRequest,
  FlightAuthorizationResponse,$FlightAuthorizationResponse,
  FlightAuthorizationSummary,
  FlightAuthorizationUpdateRequest,
  FlightTrajectory4D,
  GeographicArea,
  GetAirspaceRestrictions200Response,
  ListFlightAuthorizations200Response,
  Position3D,
  SafeLandingArea,
  TimePeriod,
  TrajectoryPoint4D,
  WeatherDataPoint,
  WeatherDataPointConditions,
  WeatherInformation,
  WeatherRequirements,
  WeatherRequirementsTemperatureRange,
  WithdrawFlightAuthorizationRequest,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(FlightAuthorizationResponse.serializer)
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

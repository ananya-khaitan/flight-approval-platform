//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/flight_trajectory4_d.dart';
import 'package:app/src/model/weather_requirements.dart';
import 'package:app/src/model/contingency_procedure.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_authorization_request.g.dart';

/// FlightAuthorizationRequest
///
/// Properties:
/// * [uasRegistrationNumber] - UAS registration number
/// * [operatorId] - UAS operator identifier
/// * [flightTrajectory] 
/// * [operationMode] - Mode of UAS operation
/// * [flightType] - Type of flight according to priority rules
/// * [plannedStartTime] - Planned flight start time (ISO 8601)
/// * [plannedEndTime] - Planned flight end time (ISO 8601)
/// * [contingencyProcedures] 
/// * [weatherRequirements] 
/// * [additionalInformation] - Any additional relevant information
@BuiltValue()
abstract class FlightAuthorizationRequest implements Built<FlightAuthorizationRequest, FlightAuthorizationRequestBuilder> {
  /// UAS registration number
  @BuiltValueField(wireName: r'uas_registration_number')
  String get uasRegistrationNumber;

  /// UAS operator identifier
  @BuiltValueField(wireName: r'operator_id')
  String get operatorId;

  @BuiltValueField(wireName: r'flight_trajectory')
  FlightTrajectory4D get flightTrajectory;

  /// Mode of UAS operation
  @BuiltValueField(wireName: r'operation_mode')
  FlightAuthorizationRequestOperationModeEnum get operationMode;
  // enum operationModeEnum {  VLOS,  BVLOS_with_observers,  BVLOS_automated,  };

  /// Type of flight according to priority rules
  @BuiltValueField(wireName: r'flight_type')
  FlightAuthorizationRequestFlightTypeEnum get flightType;
  // enum flightTypeEnum {  normal,  special_operations,  };

  /// Planned flight start time (ISO 8601)
  @BuiltValueField(wireName: r'planned_start_time')
  DateTime get plannedStartTime;

  /// Planned flight end time (ISO 8601)
  @BuiltValueField(wireName: r'planned_end_time')
  DateTime get plannedEndTime;

  @BuiltValueField(wireName: r'contingency_procedures')
  BuiltList<ContingencyProcedure>? get contingencyProcedures;

  @BuiltValueField(wireName: r'weather_requirements')
  WeatherRequirements? get weatherRequirements;

  /// Any additional relevant information
  @BuiltValueField(wireName: r'additional_information')
  String? get additionalInformation;

  FlightAuthorizationRequest._();

  factory FlightAuthorizationRequest([void updates(FlightAuthorizationRequestBuilder b)]) = _$FlightAuthorizationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlightAuthorizationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightAuthorizationRequest> get serializer => _$FlightAuthorizationRequestSerializer();
}

class _$FlightAuthorizationRequestSerializer implements PrimitiveSerializer<FlightAuthorizationRequest> {
  @override
  final Iterable<Type> types = const [FlightAuthorizationRequest, _$FlightAuthorizationRequest];

  @override
  final String wireName = r'FlightAuthorizationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uas_registration_number';
    yield serializers.serialize(
      object.uasRegistrationNumber,
      specifiedType: const FullType(String),
    );
    yield r'operator_id';
    yield serializers.serialize(
      object.operatorId,
      specifiedType: const FullType(String),
    );
    yield r'flight_trajectory';
    yield serializers.serialize(
      object.flightTrajectory,
      specifiedType: const FullType(FlightTrajectory4D),
    );
    yield r'operation_mode';
    yield serializers.serialize(
      object.operationMode,
      specifiedType: const FullType(FlightAuthorizationRequestOperationModeEnum),
    );
    yield r'flight_type';
    yield serializers.serialize(
      object.flightType,
      specifiedType: const FullType(FlightAuthorizationRequestFlightTypeEnum),
    );
    yield r'planned_start_time';
    yield serializers.serialize(
      object.plannedStartTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'planned_end_time';
    yield serializers.serialize(
      object.plannedEndTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.contingencyProcedures != null) {
      yield r'contingency_procedures';
      yield serializers.serialize(
        object.contingencyProcedures,
        specifiedType: const FullType(BuiltList, [FullType(ContingencyProcedure)]),
      );
    }
    if (object.weatherRequirements != null) {
      yield r'weather_requirements';
      yield serializers.serialize(
        object.weatherRequirements,
        specifiedType: const FullType(WeatherRequirements),
      );
    }
    if (object.additionalInformation != null) {
      yield r'additional_information';
      yield serializers.serialize(
        object.additionalInformation,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightAuthorizationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uas_registration_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uasRegistrationNumber = valueDes;
          break;
        case r'operator_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.operatorId = valueDes;
          break;
        case r'flight_trajectory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightTrajectory4D),
          ) as FlightTrajectory4D;
          result.flightTrajectory.replace(valueDes);
          break;
        case r'operation_mode':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationRequestOperationModeEnum),
          ) as FlightAuthorizationRequestOperationModeEnum;
          result.operationMode = valueDes;
          break;
        case r'flight_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationRequestFlightTypeEnum),
          ) as FlightAuthorizationRequestFlightTypeEnum;
          result.flightType = valueDes;
          break;
        case r'planned_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.plannedStartTime = valueDes;
          break;
        case r'planned_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.plannedEndTime = valueDes;
          break;
        case r'contingency_procedures':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ContingencyProcedure)]),
          ) as BuiltList<ContingencyProcedure>;
          result.contingencyProcedures.replace(valueDes);
          break;
        case r'weather_requirements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WeatherRequirements),
          ) as WeatherRequirements;
          result.weatherRequirements.replace(valueDes);
          break;
        case r'additional_information':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.additionalInformation = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlightAuthorizationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlightAuthorizationRequestBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class FlightAuthorizationRequestOperationModeEnum extends EnumClass {

  /// Mode of UAS operation
  @BuiltValueEnumConst(wireName: r'VLOS')
  static const FlightAuthorizationRequestOperationModeEnum VLOS = _$flightAuthorizationRequestOperationModeEnum_VLOS;
  /// Mode of UAS operation
  @BuiltValueEnumConst(wireName: r'BVLOS_with_observers')
  static const FlightAuthorizationRequestOperationModeEnum bVLOSWithObservers = _$flightAuthorizationRequestOperationModeEnum_bVLOSWithObservers;
  /// Mode of UAS operation
  @BuiltValueEnumConst(wireName: r'BVLOS_automated')
  static const FlightAuthorizationRequestOperationModeEnum bVLOSAutomated = _$flightAuthorizationRequestOperationModeEnum_bVLOSAutomated;

  static Serializer<FlightAuthorizationRequestOperationModeEnum> get serializer => _$flightAuthorizationRequestOperationModeEnumSerializer;

  const FlightAuthorizationRequestOperationModeEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationRequestOperationModeEnum> get values => _$flightAuthorizationRequestOperationModeEnumValues;
  static FlightAuthorizationRequestOperationModeEnum valueOf(String name) => _$flightAuthorizationRequestOperationModeEnumValueOf(name);
}

class FlightAuthorizationRequestFlightTypeEnum extends EnumClass {

  /// Type of flight according to priority rules
  @BuiltValueEnumConst(wireName: r'normal')
  static const FlightAuthorizationRequestFlightTypeEnum normal = _$flightAuthorizationRequestFlightTypeEnum_normal;
  /// Type of flight according to priority rules
  @BuiltValueEnumConst(wireName: r'special_operations')
  static const FlightAuthorizationRequestFlightTypeEnum specialOperations = _$flightAuthorizationRequestFlightTypeEnum_specialOperations;

  static Serializer<FlightAuthorizationRequestFlightTypeEnum> get serializer => _$flightAuthorizationRequestFlightTypeEnumSerializer;

  const FlightAuthorizationRequestFlightTypeEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationRequestFlightTypeEnum> get values => _$flightAuthorizationRequestFlightTypeEnumValues;
  static FlightAuthorizationRequestFlightTypeEnum valueOf(String name) => _$flightAuthorizationRequestFlightTypeEnumValueOf(name);
}


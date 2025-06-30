//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_authorization_summary.g.dart';

/// FlightAuthorizationSummary
///
/// Properties:
/// * [authorizationId] 
/// * [status] 
/// * [plannedStartTime] 
/// * [plannedEndTime] 
/// * [flightType] 
/// * [uasRegistrationNumber] 
@BuiltValue()
abstract class FlightAuthorizationSummary implements Built<FlightAuthorizationSummary, FlightAuthorizationSummaryBuilder> {
  @BuiltValueField(wireName: r'authorization_id')
  String? get authorizationId;

  @BuiltValueField(wireName: r'status')
  FlightAuthorizationSummaryStatusEnum? get status;
  // enum statusEnum {  pending,  accepted,  rejected,  activated,  ended,  withdrawn,  };

  @BuiltValueField(wireName: r'planned_start_time')
  DateTime? get plannedStartTime;

  @BuiltValueField(wireName: r'planned_end_time')
  DateTime? get plannedEndTime;

  @BuiltValueField(wireName: r'flight_type')
  FlightAuthorizationSummaryFlightTypeEnum? get flightType;
  // enum flightTypeEnum {  normal,  special_operations,  };

  @BuiltValueField(wireName: r'uas_registration_number')
  String? get uasRegistrationNumber;

  FlightAuthorizationSummary._();

  factory FlightAuthorizationSummary([void updates(FlightAuthorizationSummaryBuilder b)]) = _$FlightAuthorizationSummary;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlightAuthorizationSummaryBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightAuthorizationSummary> get serializer => _$FlightAuthorizationSummarySerializer();
}

class _$FlightAuthorizationSummarySerializer implements PrimitiveSerializer<FlightAuthorizationSummary> {
  @override
  final Iterable<Type> types = const [FlightAuthorizationSummary, _$FlightAuthorizationSummary];

  @override
  final String wireName = r'FlightAuthorizationSummary';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightAuthorizationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorizationId != null) {
      yield r'authorization_id';
      yield serializers.serialize(
        object.authorizationId,
        specifiedType: const FullType(String),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType(FlightAuthorizationSummaryStatusEnum),
      );
    }
    if (object.plannedStartTime != null) {
      yield r'planned_start_time';
      yield serializers.serialize(
        object.plannedStartTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.plannedEndTime != null) {
      yield r'planned_end_time';
      yield serializers.serialize(
        object.plannedEndTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.flightType != null) {
      yield r'flight_type';
      yield serializers.serialize(
        object.flightType,
        specifiedType: const FullType(FlightAuthorizationSummaryFlightTypeEnum),
      );
    }
    if (object.uasRegistrationNumber != null) {
      yield r'uas_registration_number';
      yield serializers.serialize(
        object.uasRegistrationNumber,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightAuthorizationSummary object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightAuthorizationSummaryBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorization_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationId = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationSummaryStatusEnum),
          ) as FlightAuthorizationSummaryStatusEnum;
          result.status = valueDes;
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
        case r'flight_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationSummaryFlightTypeEnum),
          ) as FlightAuthorizationSummaryFlightTypeEnum;
          result.flightType = valueDes;
          break;
        case r'uas_registration_number':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uasRegistrationNumber = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlightAuthorizationSummary deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlightAuthorizationSummaryBuilder();
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

class FlightAuthorizationSummaryStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'pending')
  static const FlightAuthorizationSummaryStatusEnum pending = _$flightAuthorizationSummaryStatusEnum_pending;
  @BuiltValueEnumConst(wireName: r'accepted')
  static const FlightAuthorizationSummaryStatusEnum accepted = _$flightAuthorizationSummaryStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const FlightAuthorizationSummaryStatusEnum rejected = _$flightAuthorizationSummaryStatusEnum_rejected;
  @BuiltValueEnumConst(wireName: r'activated')
  static const FlightAuthorizationSummaryStatusEnum activated = _$flightAuthorizationSummaryStatusEnum_activated;
  @BuiltValueEnumConst(wireName: r'ended')
  static const FlightAuthorizationSummaryStatusEnum ended = _$flightAuthorizationSummaryStatusEnum_ended;
  @BuiltValueEnumConst(wireName: r'withdrawn')
  static const FlightAuthorizationSummaryStatusEnum withdrawn = _$flightAuthorizationSummaryStatusEnum_withdrawn;

  static Serializer<FlightAuthorizationSummaryStatusEnum> get serializer => _$flightAuthorizationSummaryStatusEnumSerializer;

  const FlightAuthorizationSummaryStatusEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationSummaryStatusEnum> get values => _$flightAuthorizationSummaryStatusEnumValues;
  static FlightAuthorizationSummaryStatusEnum valueOf(String name) => _$flightAuthorizationSummaryStatusEnumValueOf(name);
}

class FlightAuthorizationSummaryFlightTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'normal')
  static const FlightAuthorizationSummaryFlightTypeEnum normal = _$flightAuthorizationSummaryFlightTypeEnum_normal;
  @BuiltValueEnumConst(wireName: r'special_operations')
  static const FlightAuthorizationSummaryFlightTypeEnum specialOperations = _$flightAuthorizationSummaryFlightTypeEnum_specialOperations;

  static Serializer<FlightAuthorizationSummaryFlightTypeEnum> get serializer => _$flightAuthorizationSummaryFlightTypeEnumSerializer;

  const FlightAuthorizationSummaryFlightTypeEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationSummaryFlightTypeEnum> get values => _$flightAuthorizationSummaryFlightTypeEnumValues;
  static FlightAuthorizationSummaryFlightTypeEnum valueOf(String name) => _$flightAuthorizationSummaryFlightTypeEnumValueOf(name);
}


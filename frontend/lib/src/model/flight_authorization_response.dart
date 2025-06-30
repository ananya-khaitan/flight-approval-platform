//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/deviation_thresholds.dart';
import 'package:app/src/model/alternative_authorization.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_authorization_response.g.dart';

/// FlightAuthorizationResponse
///
/// Properties:
/// * [authorizationId] - Unique authorization number
/// * [status] 
/// * [requestTime] - Time when request was received
/// * [responseTime] - Time when response was generated
/// * [termsAndConditions] - Terms and conditions for the flight authorization
/// * [deviationThresholds] 
/// * [alternativeAuthorization] 
/// * [rejectionReasons] - Reasons for rejection (if status is rejected)
@BuiltValue(instantiable: false)
abstract class FlightAuthorizationResponse  {
  /// Unique authorization number
  @BuiltValueField(wireName: r'authorization_id')
  String get authorizationId;

  @BuiltValueField(wireName: r'status')
  FlightAuthorizationResponseStatusEnum get status;
  // enum statusEnum {  accepted,  rejected,  };

  /// Time when request was received
  @BuiltValueField(wireName: r'request_time')
  DateTime get requestTime;

  /// Time when response was generated
  @BuiltValueField(wireName: r'response_time')
  DateTime get responseTime;

  /// Terms and conditions for the flight authorization
  @BuiltValueField(wireName: r'terms_and_conditions')
  BuiltList<String>? get termsAndConditions;

  @BuiltValueField(wireName: r'deviation_thresholds')
  DeviationThresholds? get deviationThresholds;

  @BuiltValueField(wireName: r'alternative_authorization')
  AlternativeAuthorization? get alternativeAuthorization;

  /// Reasons for rejection (if status is rejected)
  @BuiltValueField(wireName: r'rejection_reasons')
  BuiltList<String>? get rejectionReasons;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightAuthorizationResponse> get serializer => _$FlightAuthorizationResponseSerializer();
}

class _$FlightAuthorizationResponseSerializer implements PrimitiveSerializer<FlightAuthorizationResponse> {
  @override
  final Iterable<Type> types = const [FlightAuthorizationResponse];

  @override
  final String wireName = r'FlightAuthorizationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightAuthorizationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'authorization_id';
    yield serializers.serialize(
      object.authorizationId,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FlightAuthorizationResponseStatusEnum),
    );
    yield r'request_time';
    yield serializers.serialize(
      object.requestTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'response_time';
    yield serializers.serialize(
      object.responseTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.termsAndConditions != null) {
      yield r'terms_and_conditions';
      yield serializers.serialize(
        object.termsAndConditions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.deviationThresholds != null) {
      yield r'deviation_thresholds';
      yield serializers.serialize(
        object.deviationThresholds,
        specifiedType: const FullType(DeviationThresholds),
      );
    }
    if (object.alternativeAuthorization != null) {
      yield r'alternative_authorization';
      yield serializers.serialize(
        object.alternativeAuthorization,
        specifiedType: const FullType(AlternativeAuthorization),
      );
    }
    if (object.rejectionReasons != null) {
      yield r'rejection_reasons';
      yield serializers.serialize(
        object.rejectionReasons,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightAuthorizationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  @override
  FlightAuthorizationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.deserialize(serialized, specifiedType: FullType($FlightAuthorizationResponse)) as $FlightAuthorizationResponse;
  }
}

/// a concrete implementation of [FlightAuthorizationResponse], since [FlightAuthorizationResponse] is not instantiable
@BuiltValue(instantiable: true)
abstract class $FlightAuthorizationResponse implements FlightAuthorizationResponse, Built<$FlightAuthorizationResponse, $FlightAuthorizationResponseBuilder> {
  $FlightAuthorizationResponse._();

  factory $FlightAuthorizationResponse([void Function($FlightAuthorizationResponseBuilder)? updates]) = _$$FlightAuthorizationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults($FlightAuthorizationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<$FlightAuthorizationResponse> get serializer => _$$FlightAuthorizationResponseSerializer();
}

class _$$FlightAuthorizationResponseSerializer implements PrimitiveSerializer<$FlightAuthorizationResponse> {
  @override
  final Iterable<Type> types = const [$FlightAuthorizationResponse, _$$FlightAuthorizationResponse];

  @override
  final String wireName = r'$FlightAuthorizationResponse';

  @override
  Object serialize(
    Serializers serializers,
    $FlightAuthorizationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return serializers.serialize(object, specifiedType: FullType(FlightAuthorizationResponse))!;
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightAuthorizationResponseBuilder result,
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
            specifiedType: const FullType(FlightAuthorizationResponseStatusEnum),
          ) as FlightAuthorizationResponseStatusEnum;
          result.status = valueDes;
          break;
        case r'request_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.requestTime = valueDes;
          break;
        case r'response_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.responseTime = valueDes;
          break;
        case r'terms_and_conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.termsAndConditions.replace(valueDes);
          break;
        case r'deviation_thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviationThresholds),
          ) as DeviationThresholds;
          result.deviationThresholds.replace(valueDes);
          break;
        case r'alternative_authorization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlternativeAuthorization),
          ) as AlternativeAuthorization;
          result.alternativeAuthorization.replace(valueDes);
          break;
        case r'rejection_reasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.rejectionReasons.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  $FlightAuthorizationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = $FlightAuthorizationResponseBuilder();
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

class FlightAuthorizationResponseStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accepted')
  static const FlightAuthorizationResponseStatusEnum accepted = _$flightAuthorizationResponseStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const FlightAuthorizationResponseStatusEnum rejected = _$flightAuthorizationResponseStatusEnum_rejected;

  static Serializer<FlightAuthorizationResponseStatusEnum> get serializer => _$flightAuthorizationResponseStatusEnumSerializer;

  const FlightAuthorizationResponseStatusEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationResponseStatusEnum> get values => _$flightAuthorizationResponseStatusEnumValues;
  static FlightAuthorizationResponseStatusEnum valueOf(String name) => _$flightAuthorizationResponseStatusEnumValueOf(name);
}


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/flight_authorization_response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/deviation_thresholds.dart';
import 'package:app/src/model/flight_authorization_request.dart';
import 'package:app/src/model/alternative_authorization.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_authorization_details.g.dart';

/// FlightAuthorizationDetails
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
/// * [originalRequest] 
/// * [currentStatus] 
/// * [activationTime] 
/// * [endTime] 
/// * [lastUpdated] 
@BuiltValue()
abstract class FlightAuthorizationDetails implements FlightAuthorizationResponse, Built<FlightAuthorizationDetails, FlightAuthorizationDetailsBuilder> {
  @BuiltValueField(wireName: r'original_request')
  FlightAuthorizationRequest? get originalRequest;

  @BuiltValueField(wireName: r'last_updated')
  DateTime? get lastUpdated;

  @BuiltValueField(wireName: r'current_status')
  FlightAuthorizationDetailsCurrentStatusEnum? get currentStatus;
  // enum currentStatusEnum {  accepted,  activated,  ended,  withdrawn,  };

  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  @BuiltValueField(wireName: r'activation_time')
  DateTime? get activationTime;

  FlightAuthorizationDetails._();

  factory FlightAuthorizationDetails([void updates(FlightAuthorizationDetailsBuilder b)]) = _$FlightAuthorizationDetails;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlightAuthorizationDetailsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightAuthorizationDetails> get serializer => _$FlightAuthorizationDetailsSerializer();
}

class _$FlightAuthorizationDetailsSerializer implements PrimitiveSerializer<FlightAuthorizationDetails> {
  @override
  final Iterable<Type> types = const [FlightAuthorizationDetails, _$FlightAuthorizationDetails];

  @override
  final String wireName = r'FlightAuthorizationDetails';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightAuthorizationDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currentStatus != null) {
      yield r'current_status';
      yield serializers.serialize(
        object.currentStatus,
        specifiedType: const FullType(FlightAuthorizationDetailsCurrentStatusEnum),
      );
    }
    yield r'response_time';
    yield serializers.serialize(
      object.responseTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'authorization_id';
    yield serializers.serialize(
      object.authorizationId,
      specifiedType: const FullType(String),
    );
    if (object.termsAndConditions != null) {
      yield r'terms_and_conditions';
      yield serializers.serialize(
        object.termsAndConditions,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.originalRequest != null) {
      yield r'original_request';
      yield serializers.serialize(
        object.originalRequest,
        specifiedType: const FullType(FlightAuthorizationRequest),
      );
    }
    yield r'request_time';
    yield serializers.serialize(
      object.requestTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.alternativeAuthorization != null) {
      yield r'alternative_authorization';
      yield serializers.serialize(
        object.alternativeAuthorization,
        specifiedType: const FullType(AlternativeAuthorization),
      );
    }
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.rejectionReasons != null) {
      yield r'rejection_reasons';
      yield serializers.serialize(
        object.rejectionReasons,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.activationTime != null) {
      yield r'activation_time';
      yield serializers.serialize(
        object.activationTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.deviationThresholds != null) {
      yield r'deviation_thresholds';
      yield serializers.serialize(
        object.deviationThresholds,
        specifiedType: const FullType(DeviationThresholds),
      );
    }
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(FlightAuthorizationResponseStatusEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightAuthorizationDetails object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightAuthorizationDetailsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'current_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationDetailsCurrentStatusEnum),
          ) as FlightAuthorizationDetailsCurrentStatusEnum;
          result.currentStatus = valueDes;
          break;
        case r'response_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.responseTime = valueDes;
          break;
        case r'authorization_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.authorizationId = valueDes;
          break;
        case r'terms_and_conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.termsAndConditions.replace(valueDes);
          break;
        case r'original_request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationRequest),
          ) as FlightAuthorizationRequest;
          result.originalRequest.replace(valueDes);
          break;
        case r'request_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.requestTime = valueDes;
          break;
        case r'alternative_authorization':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AlternativeAuthorization),
          ) as AlternativeAuthorization;
          result.alternativeAuthorization.replace(valueDes);
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdated = valueDes;
          break;
        case r'rejection_reasons':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.rejectionReasons.replace(valueDes);
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        case r'activation_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.activationTime = valueDes;
          break;
        case r'deviation_thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviationThresholds),
          ) as DeviationThresholds;
          result.deviationThresholds.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightAuthorizationResponseStatusEnum),
          ) as FlightAuthorizationResponseStatusEnum;
          result.status = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlightAuthorizationDetails deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlightAuthorizationDetailsBuilder();
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

class FlightAuthorizationDetailsStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accepted')
  static const FlightAuthorizationDetailsStatusEnum accepted = _$flightAuthorizationDetailsStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const FlightAuthorizationDetailsStatusEnum rejected = _$flightAuthorizationDetailsStatusEnum_rejected;

  static Serializer<FlightAuthorizationDetailsStatusEnum> get serializer => _$flightAuthorizationDetailsStatusEnumSerializer;

  const FlightAuthorizationDetailsStatusEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationDetailsStatusEnum> get values => _$flightAuthorizationDetailsStatusEnumValues;
  static FlightAuthorizationDetailsStatusEnum valueOf(String name) => _$flightAuthorizationDetailsStatusEnumValueOf(name);
}

class FlightAuthorizationDetailsCurrentStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'accepted')
  static const FlightAuthorizationDetailsCurrentStatusEnum accepted = _$flightAuthorizationDetailsCurrentStatusEnum_accepted;
  @BuiltValueEnumConst(wireName: r'activated')
  static const FlightAuthorizationDetailsCurrentStatusEnum activated = _$flightAuthorizationDetailsCurrentStatusEnum_activated;
  @BuiltValueEnumConst(wireName: r'ended')
  static const FlightAuthorizationDetailsCurrentStatusEnum ended = _$flightAuthorizationDetailsCurrentStatusEnum_ended;
  @BuiltValueEnumConst(wireName: r'withdrawn')
  static const FlightAuthorizationDetailsCurrentStatusEnum withdrawn = _$flightAuthorizationDetailsCurrentStatusEnum_withdrawn;

  static Serializer<FlightAuthorizationDetailsCurrentStatusEnum> get serializer => _$flightAuthorizationDetailsCurrentStatusEnumSerializer;

  const FlightAuthorizationDetailsCurrentStatusEnum._(String name): super(name);

  static BuiltSet<FlightAuthorizationDetailsCurrentStatusEnum> get values => _$flightAuthorizationDetailsCurrentStatusEnumValues;
  static FlightAuthorizationDetailsCurrentStatusEnum valueOf(String name) => _$flightAuthorizationDetailsCurrentStatusEnumValueOf(name);
}


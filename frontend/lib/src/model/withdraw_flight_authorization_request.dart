//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'withdraw_flight_authorization_request.g.dart';

/// WithdrawFlightAuthorizationRequest
///
/// Properties:
/// * [reason] - Reason for withdrawal
@BuiltValue()
abstract class WithdrawFlightAuthorizationRequest implements Built<WithdrawFlightAuthorizationRequest, WithdrawFlightAuthorizationRequestBuilder> {
  /// Reason for withdrawal
  @BuiltValueField(wireName: r'reason')
  WithdrawFlightAuthorizationRequestReasonEnum? get reason;
  // enum reasonEnum {  operator_request,  conflict_detected,  emergency_aircraft,  dynamic_restriction,  };

  WithdrawFlightAuthorizationRequest._();

  factory WithdrawFlightAuthorizationRequest([void updates(WithdrawFlightAuthorizationRequestBuilder b)]) = _$WithdrawFlightAuthorizationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WithdrawFlightAuthorizationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WithdrawFlightAuthorizationRequest> get serializer => _$WithdrawFlightAuthorizationRequestSerializer();
}

class _$WithdrawFlightAuthorizationRequestSerializer implements PrimitiveSerializer<WithdrawFlightAuthorizationRequest> {
  @override
  final Iterable<Type> types = const [WithdrawFlightAuthorizationRequest, _$WithdrawFlightAuthorizationRequest];

  @override
  final String wireName = r'WithdrawFlightAuthorizationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WithdrawFlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(WithdrawFlightAuthorizationRequestReasonEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WithdrawFlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WithdrawFlightAuthorizationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WithdrawFlightAuthorizationRequestReasonEnum),
          ) as WithdrawFlightAuthorizationRequestReasonEnum;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WithdrawFlightAuthorizationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WithdrawFlightAuthorizationRequestBuilder();
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

class WithdrawFlightAuthorizationRequestReasonEnum extends EnumClass {

  /// Reason for withdrawal
  @BuiltValueEnumConst(wireName: r'operator_request')
  static const WithdrawFlightAuthorizationRequestReasonEnum operatorRequest = _$withdrawFlightAuthorizationRequestReasonEnum_operatorRequest;
  /// Reason for withdrawal
  @BuiltValueEnumConst(wireName: r'conflict_detected')
  static const WithdrawFlightAuthorizationRequestReasonEnum conflictDetected = _$withdrawFlightAuthorizationRequestReasonEnum_conflictDetected;
  /// Reason for withdrawal
  @BuiltValueEnumConst(wireName: r'emergency_aircraft')
  static const WithdrawFlightAuthorizationRequestReasonEnum emergencyAircraft = _$withdrawFlightAuthorizationRequestReasonEnum_emergencyAircraft;
  /// Reason for withdrawal
  @BuiltValueEnumConst(wireName: r'dynamic_restriction')
  static const WithdrawFlightAuthorizationRequestReasonEnum dynamicRestriction = _$withdrawFlightAuthorizationRequestReasonEnum_dynamicRestriction;

  static Serializer<WithdrawFlightAuthorizationRequestReasonEnum> get serializer => _$withdrawFlightAuthorizationRequestReasonEnumSerializer;

  const WithdrawFlightAuthorizationRequestReasonEnum._(String name): super(name);

  static BuiltSet<WithdrawFlightAuthorizationRequestReasonEnum> get values => _$withdrawFlightAuthorizationRequestReasonEnumValues;
  static WithdrawFlightAuthorizationRequestReasonEnum valueOf(String name) => _$withdrawFlightAuthorizationRequestReasonEnumValueOf(name);
}


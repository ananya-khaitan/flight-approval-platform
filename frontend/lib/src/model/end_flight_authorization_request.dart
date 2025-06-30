//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/position3_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'end_flight_authorization_request.g.dart';

/// EndFlightAuthorizationRequest
///
/// Properties:
/// * [actualEndTime] - Actual flight end time (ISO 8601)
/// * [endReason] 
/// * [finalPosition] 
@BuiltValue()
abstract class EndFlightAuthorizationRequest implements Built<EndFlightAuthorizationRequest, EndFlightAuthorizationRequestBuilder> {
  /// Actual flight end time (ISO 8601)
  @BuiltValueField(wireName: r'actual_end_time')
  DateTime? get actualEndTime;

  @BuiltValueField(wireName: r'end_reason')
  EndFlightAuthorizationRequestEndReasonEnum? get endReason;
  // enum endReasonEnum {  normal_completion,  emergency_landing,  technical_issue,  weather_abort,  };

  @BuiltValueField(wireName: r'final_position')
  Position3D? get finalPosition;

  EndFlightAuthorizationRequest._();

  factory EndFlightAuthorizationRequest([void updates(EndFlightAuthorizationRequestBuilder b)]) = _$EndFlightAuthorizationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EndFlightAuthorizationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EndFlightAuthorizationRequest> get serializer => _$EndFlightAuthorizationRequestSerializer();
}

class _$EndFlightAuthorizationRequestSerializer implements PrimitiveSerializer<EndFlightAuthorizationRequest> {
  @override
  final Iterable<Type> types = const [EndFlightAuthorizationRequest, _$EndFlightAuthorizationRequest];

  @override
  final String wireName = r'EndFlightAuthorizationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EndFlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.actualEndTime != null) {
      yield r'actual_end_time';
      yield serializers.serialize(
        object.actualEndTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.endReason != null) {
      yield r'end_reason';
      yield serializers.serialize(
        object.endReason,
        specifiedType: const FullType(EndFlightAuthorizationRequestEndReasonEnum),
      );
    }
    if (object.finalPosition != null) {
      yield r'final_position';
      yield serializers.serialize(
        object.finalPosition,
        specifiedType: const FullType(Position3D),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EndFlightAuthorizationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EndFlightAuthorizationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'actual_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.actualEndTime = valueDes;
          break;
        case r'end_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EndFlightAuthorizationRequestEndReasonEnum),
          ) as EndFlightAuthorizationRequestEndReasonEnum;
          result.endReason = valueDes;
          break;
        case r'final_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Position3D),
          ) as Position3D;
          result.finalPosition.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EndFlightAuthorizationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndFlightAuthorizationRequestBuilder();
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

class EndFlightAuthorizationRequestEndReasonEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'normal_completion')
  static const EndFlightAuthorizationRequestEndReasonEnum normalCompletion = _$endFlightAuthorizationRequestEndReasonEnum_normalCompletion;
  @BuiltValueEnumConst(wireName: r'emergency_landing')
  static const EndFlightAuthorizationRequestEndReasonEnum emergencyLanding = _$endFlightAuthorizationRequestEndReasonEnum_emergencyLanding;
  @BuiltValueEnumConst(wireName: r'technical_issue')
  static const EndFlightAuthorizationRequestEndReasonEnum technicalIssue = _$endFlightAuthorizationRequestEndReasonEnum_technicalIssue;
  @BuiltValueEnumConst(wireName: r'weather_abort')
  static const EndFlightAuthorizationRequestEndReasonEnum weatherAbort = _$endFlightAuthorizationRequestEndReasonEnum_weatherAbort;

  static Serializer<EndFlightAuthorizationRequestEndReasonEnum> get serializer => _$endFlightAuthorizationRequestEndReasonEnumSerializer;

  const EndFlightAuthorizationRequestEndReasonEnum._(String name): super(name);

  static BuiltSet<EndFlightAuthorizationRequestEndReasonEnum> get values => _$endFlightAuthorizationRequestEndReasonEnumValues;
  static EndFlightAuthorizationRequestEndReasonEnum valueOf(String name) => _$endFlightAuthorizationRequestEndReasonEnumValueOf(name);
}


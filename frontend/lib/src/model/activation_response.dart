//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activation_response.g.dart';

/// ActivationResponse
///
/// Properties:
/// * [activationStatus] 
/// * [activationTime] 
/// * [rejectionReason] - Reason for activation rejection
/// * [trafficInformationAvailable] - Whether traffic information service is available
/// * [conformanceMonitoringActive] - Whether conformance monitoring is active
@BuiltValue()
abstract class ActivationResponse implements Built<ActivationResponse, ActivationResponseBuilder> {
  @BuiltValueField(wireName: r'activation_status')
  ActivationResponseActivationStatusEnum get activationStatus;
  // enum activationStatusEnum {  activated,  rejected,  };

  @BuiltValueField(wireName: r'activation_time')
  DateTime get activationTime;

  /// Reason for activation rejection
  @BuiltValueField(wireName: r'rejection_reason')
  String? get rejectionReason;

  /// Whether traffic information service is available
  @BuiltValueField(wireName: r'traffic_information_available')
  bool? get trafficInformationAvailable;

  /// Whether conformance monitoring is active
  @BuiltValueField(wireName: r'conformance_monitoring_active')
  bool? get conformanceMonitoringActive;

  ActivationResponse._();

  factory ActivationResponse([void updates(ActivationResponseBuilder b)]) = _$ActivationResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivationResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivationResponse> get serializer => _$ActivationResponseSerializer();
}

class _$ActivationResponseSerializer implements PrimitiveSerializer<ActivationResponse> {
  @override
  final Iterable<Type> types = const [ActivationResponse, _$ActivationResponse];

  @override
  final String wireName = r'ActivationResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'activation_status';
    yield serializers.serialize(
      object.activationStatus,
      specifiedType: const FullType(ActivationResponseActivationStatusEnum),
    );
    yield r'activation_time';
    yield serializers.serialize(
      object.activationTime,
      specifiedType: const FullType(DateTime),
    );
    if (object.rejectionReason != null) {
      yield r'rejection_reason';
      yield serializers.serialize(
        object.rejectionReason,
        specifiedType: const FullType(String),
      );
    }
    if (object.trafficInformationAvailable != null) {
      yield r'traffic_information_available';
      yield serializers.serialize(
        object.trafficInformationAvailable,
        specifiedType: const FullType(bool),
      );
    }
    if (object.conformanceMonitoringActive != null) {
      yield r'conformance_monitoring_active';
      yield serializers.serialize(
        object.conformanceMonitoringActive,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivationResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivationResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'activation_status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ActivationResponseActivationStatusEnum),
          ) as ActivationResponseActivationStatusEnum;
          result.activationStatus = valueDes;
          break;
        case r'activation_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.activationTime = valueDes;
          break;
        case r'rejection_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.rejectionReason = valueDes;
          break;
        case r'traffic_information_available':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.trafficInformationAvailable = valueDes;
          break;
        case r'conformance_monitoring_active':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.conformanceMonitoringActive = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivationResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivationResponseBuilder();
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

class ActivationResponseActivationStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'activated')
  static const ActivationResponseActivationStatusEnum activated = _$activationResponseActivationStatusEnum_activated;
  @BuiltValueEnumConst(wireName: r'rejected')
  static const ActivationResponseActivationStatusEnum rejected = _$activationResponseActivationStatusEnum_rejected;

  static Serializer<ActivationResponseActivationStatusEnum> get serializer => _$activationResponseActivationStatusEnumSerializer;

  const ActivationResponseActivationStatusEnum._(String name): super(name);

  static BuiltSet<ActivationResponseActivationStatusEnum> get values => _$activationResponseActivationStatusEnumValues;
  static ActivationResponseActivationStatusEnum valueOf(String name) => _$activationResponseActivationStatusEnumValueOf(name);
}


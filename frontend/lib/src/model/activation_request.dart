//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/position3_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activation_request.g.dart';

/// ActivationRequest
///
/// Properties:
/// * [confirmationTermsAccepted] - Confirmation that terms and conditions are accepted
/// * [actualStartPosition] 
/// * [estimatedStartTime] - Estimated actual start time
@BuiltValue()
abstract class ActivationRequest implements Built<ActivationRequest, ActivationRequestBuilder> {
  /// Confirmation that terms and conditions are accepted
  @BuiltValueField(wireName: r'confirmation_terms_accepted')
  bool get confirmationTermsAccepted;

  @BuiltValueField(wireName: r'actual_start_position')
  Position3D? get actualStartPosition;

  /// Estimated actual start time
  @BuiltValueField(wireName: r'estimated_start_time')
  DateTime? get estimatedStartTime;

  ActivationRequest._();

  factory ActivationRequest([void updates(ActivationRequestBuilder b)]) = _$ActivationRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivationRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivationRequest> get serializer => _$ActivationRequestSerializer();
}

class _$ActivationRequestSerializer implements PrimitiveSerializer<ActivationRequest> {
  @override
  final Iterable<Type> types = const [ActivationRequest, _$ActivationRequest];

  @override
  final String wireName = r'ActivationRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'confirmation_terms_accepted';
    yield serializers.serialize(
      object.confirmationTermsAccepted,
      specifiedType: const FullType(bool),
    );
    if (object.actualStartPosition != null) {
      yield r'actual_start_position';
      yield serializers.serialize(
        object.actualStartPosition,
        specifiedType: const FullType(Position3D),
      );
    }
    if (object.estimatedStartTime != null) {
      yield r'estimated_start_time';
      yield serializers.serialize(
        object.estimatedStartTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivationRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivationRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'confirmation_terms_accepted':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.confirmationTermsAccepted = valueDes;
          break;
        case r'actual_start_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Position3D),
          ) as Position3D;
          result.actualStartPosition.replace(valueDes);
          break;
        case r'estimated_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.estimatedStartTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ActivationRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivationRequestBuilder();
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


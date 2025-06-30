//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deviation_thresholds.g.dart';

/// DeviationThresholds
///
/// Properties:
/// * [horizontal] - Horizontal deviation threshold in meters
/// * [vertical] - Vertical deviation threshold in meters
/// * [temporal] - Temporal deviation threshold in seconds
@BuiltValue()
abstract class DeviationThresholds implements Built<DeviationThresholds, DeviationThresholdsBuilder> {
  /// Horizontal deviation threshold in meters
  @BuiltValueField(wireName: r'horizontal')
  double get horizontal;

  /// Vertical deviation threshold in meters
  @BuiltValueField(wireName: r'vertical')
  double get vertical;

  /// Temporal deviation threshold in seconds
  @BuiltValueField(wireName: r'temporal')
  double get temporal;

  DeviationThresholds._();

  factory DeviationThresholds([void updates(DeviationThresholdsBuilder b)]) = _$DeviationThresholds;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DeviationThresholdsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<DeviationThresholds> get serializer => _$DeviationThresholdsSerializer();
}

class _$DeviationThresholdsSerializer implements PrimitiveSerializer<DeviationThresholds> {
  @override
  final Iterable<Type> types = const [DeviationThresholds, _$DeviationThresholds];

  @override
  final String wireName = r'DeviationThresholds';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DeviationThresholds object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'horizontal';
    yield serializers.serialize(
      object.horizontal,
      specifiedType: const FullType(double),
    );
    yield r'vertical';
    yield serializers.serialize(
      object.vertical,
      specifiedType: const FullType(double),
    );
    yield r'temporal';
    yield serializers.serialize(
      object.temporal,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    DeviationThresholds object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DeviationThresholdsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'horizontal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.horizontal = valueDes;
          break;
        case r'vertical':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.vertical = valueDes;
          break;
        case r'temporal':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.temporal = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  DeviationThresholds deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DeviationThresholdsBuilder();
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


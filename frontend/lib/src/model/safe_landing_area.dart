//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/position3_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'safe_landing_area.g.dart';

/// SafeLandingArea
///
/// Properties:
/// * [centerPosition] 
/// * [radius] - Radius of safe landing area in meters
@BuiltValue()
abstract class SafeLandingArea implements Built<SafeLandingArea, SafeLandingAreaBuilder> {
  @BuiltValueField(wireName: r'center_position')
  Position3D get centerPosition;

  /// Radius of safe landing area in meters
  @BuiltValueField(wireName: r'radius')
  double get radius;

  SafeLandingArea._();

  factory SafeLandingArea([void updates(SafeLandingAreaBuilder b)]) = _$SafeLandingArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SafeLandingAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SafeLandingArea> get serializer => _$SafeLandingAreaSerializer();
}

class _$SafeLandingAreaSerializer implements PrimitiveSerializer<SafeLandingArea> {
  @override
  final Iterable<Type> types = const [SafeLandingArea, _$SafeLandingArea];

  @override
  final String wireName = r'SafeLandingArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SafeLandingArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'center_position';
    yield serializers.serialize(
      object.centerPosition,
      specifiedType: const FullType(Position3D),
    );
    yield r'radius';
    yield serializers.serialize(
      object.radius,
      specifiedType: const FullType(double),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SafeLandingArea object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SafeLandingAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'center_position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Position3D),
          ) as Position3D;
          result.centerPosition.replace(valueDes);
          break;
        case r'radius':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.radius = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SafeLandingArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SafeLandingAreaBuilder();
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


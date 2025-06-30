//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/position3_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'trajectory_point4_d.g.dart';

/// TrajectoryPoint4D
///
/// Properties:
/// * [position] 
/// * [time] - Time at this trajectory point (ISO 8601)
/// * [speed] - Ground speed in m/s
/// * [heading] - Heading in degrees (0-359)
@BuiltValue()
abstract class TrajectoryPoint4D implements Built<TrajectoryPoint4D, TrajectoryPoint4DBuilder> {
  @BuiltValueField(wireName: r'position')
  Position3D get position;

  /// Time at this trajectory point (ISO 8601)
  @BuiltValueField(wireName: r'time')
  DateTime get time;

  /// Ground speed in m/s
  @BuiltValueField(wireName: r'speed')
  double? get speed;

  /// Heading in degrees (0-359)
  @BuiltValueField(wireName: r'heading')
  double? get heading;

  TrajectoryPoint4D._();

  factory TrajectoryPoint4D([void updates(TrajectoryPoint4DBuilder b)]) = _$TrajectoryPoint4D;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TrajectoryPoint4DBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TrajectoryPoint4D> get serializer => _$TrajectoryPoint4DSerializer();
}

class _$TrajectoryPoint4DSerializer implements PrimitiveSerializer<TrajectoryPoint4D> {
  @override
  final Iterable<Type> types = const [TrajectoryPoint4D, _$TrajectoryPoint4D];

  @override
  final String wireName = r'TrajectoryPoint4D';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TrajectoryPoint4D object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'position';
    yield serializers.serialize(
      object.position,
      specifiedType: const FullType(Position3D),
    );
    yield r'time';
    yield serializers.serialize(
      object.time,
      specifiedType: const FullType(DateTime),
    );
    if (object.speed != null) {
      yield r'speed';
      yield serializers.serialize(
        object.speed,
        specifiedType: const FullType(double),
      );
    }
    if (object.heading != null) {
      yield r'heading';
      yield serializers.serialize(
        object.heading,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    TrajectoryPoint4D object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TrajectoryPoint4DBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'position':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Position3D),
          ) as Position3D;
          result.position.replace(valueDes);
          break;
        case r'time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.time = valueDes;
          break;
        case r'speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.speed = valueDes;
          break;
        case r'heading':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.heading = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TrajectoryPoint4D deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TrajectoryPoint4DBuilder();
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


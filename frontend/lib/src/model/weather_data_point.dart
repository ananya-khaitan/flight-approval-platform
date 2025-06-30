//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/position3_d.dart';
import 'package:app/src/model/weather_data_point_conditions.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_data_point.g.dart';

/// WeatherDataPoint
///
/// Properties:
/// * [position] 
/// * [time] 
/// * [conditions] 
@BuiltValue()
abstract class WeatherDataPoint implements Built<WeatherDataPoint, WeatherDataPointBuilder> {
  @BuiltValueField(wireName: r'position')
  Position3D get position;

  @BuiltValueField(wireName: r'time')
  DateTime get time;

  @BuiltValueField(wireName: r'conditions')
  WeatherDataPointConditions get conditions;

  WeatherDataPoint._();

  factory WeatherDataPoint([void updates(WeatherDataPointBuilder b)]) = _$WeatherDataPoint;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherDataPointBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherDataPoint> get serializer => _$WeatherDataPointSerializer();
}

class _$WeatherDataPointSerializer implements PrimitiveSerializer<WeatherDataPoint> {
  @override
  final Iterable<Type> types = const [WeatherDataPoint, _$WeatherDataPoint];

  @override
  final String wireName = r'WeatherDataPoint';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherDataPoint object, {
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
    yield r'conditions';
    yield serializers.serialize(
      object.conditions,
      specifiedType: const FullType(WeatherDataPointConditions),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherDataPoint object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeatherDataPointBuilder result,
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
        case r'conditions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WeatherDataPointConditions),
          ) as WeatherDataPointConditions;
          result.conditions.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherDataPoint deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherDataPointBuilder();
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


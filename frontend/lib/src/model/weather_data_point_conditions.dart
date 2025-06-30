//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_data_point_conditions.g.dart';

/// WeatherDataPointConditions
///
/// Properties:
/// * [windSpeed] - Wind speed in m/s
/// * [windDirection] - Wind direction in degrees
/// * [visibility] - Visibility in meters
/// * [precipitation] - Precipitation rate in mm/h
/// * [temperature] - Temperature in Celsius
/// * [pressure] - Atmospheric pressure in hPa
@BuiltValue()
abstract class WeatherDataPointConditions implements Built<WeatherDataPointConditions, WeatherDataPointConditionsBuilder> {
  /// Wind speed in m/s
  @BuiltValueField(wireName: r'wind_speed')
  double? get windSpeed;

  /// Wind direction in degrees
  @BuiltValueField(wireName: r'wind_direction')
  double? get windDirection;

  /// Visibility in meters
  @BuiltValueField(wireName: r'visibility')
  double? get visibility;

  /// Precipitation rate in mm/h
  @BuiltValueField(wireName: r'precipitation')
  double? get precipitation;

  /// Temperature in Celsius
  @BuiltValueField(wireName: r'temperature')
  double? get temperature;

  /// Atmospheric pressure in hPa
  @BuiltValueField(wireName: r'pressure')
  double? get pressure;

  WeatherDataPointConditions._();

  factory WeatherDataPointConditions([void updates(WeatherDataPointConditionsBuilder b)]) = _$WeatherDataPointConditions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherDataPointConditionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherDataPointConditions> get serializer => _$WeatherDataPointConditionsSerializer();
}

class _$WeatherDataPointConditionsSerializer implements PrimitiveSerializer<WeatherDataPointConditions> {
  @override
  final Iterable<Type> types = const [WeatherDataPointConditions, _$WeatherDataPointConditions];

  @override
  final String wireName = r'WeatherDataPointConditions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherDataPointConditions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.windSpeed != null) {
      yield r'wind_speed';
      yield serializers.serialize(
        object.windSpeed,
        specifiedType: const FullType(double),
      );
    }
    if (object.windDirection != null) {
      yield r'wind_direction';
      yield serializers.serialize(
        object.windDirection,
        specifiedType: const FullType(double),
      );
    }
    if (object.visibility != null) {
      yield r'visibility';
      yield serializers.serialize(
        object.visibility,
        specifiedType: const FullType(double),
      );
    }
    if (object.precipitation != null) {
      yield r'precipitation';
      yield serializers.serialize(
        object.precipitation,
        specifiedType: const FullType(double),
      );
    }
    if (object.temperature != null) {
      yield r'temperature';
      yield serializers.serialize(
        object.temperature,
        specifiedType: const FullType(double),
      );
    }
    if (object.pressure != null) {
      yield r'pressure';
      yield serializers.serialize(
        object.pressure,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherDataPointConditions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeatherDataPointConditionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'wind_speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.windSpeed = valueDes;
          break;
        case r'wind_direction':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.windDirection = valueDes;
          break;
        case r'visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.visibility = valueDes;
          break;
        case r'precipitation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.precipitation = valueDes;
          break;
        case r'temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.temperature = valueDes;
          break;
        case r'pressure':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.pressure = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherDataPointConditions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherDataPointConditionsBuilder();
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


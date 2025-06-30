//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/weather_requirements_temperature_range.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_requirements.g.dart';

/// WeatherRequirements
///
/// Properties:
/// * [maxWindSpeed] - Maximum allowable wind speed in m/s
/// * [minVisibility] - Minimum visibility in meters
/// * [maxPrecipitation] - Maximum precipitation rate in mm/h
/// * [temperatureRange] 
@BuiltValue()
abstract class WeatherRequirements implements Built<WeatherRequirements, WeatherRequirementsBuilder> {
  /// Maximum allowable wind speed in m/s
  @BuiltValueField(wireName: r'max_wind_speed')
  double? get maxWindSpeed;

  /// Minimum visibility in meters
  @BuiltValueField(wireName: r'min_visibility')
  double? get minVisibility;

  /// Maximum precipitation rate in mm/h
  @BuiltValueField(wireName: r'max_precipitation')
  double? get maxPrecipitation;

  @BuiltValueField(wireName: r'temperature_range')
  WeatherRequirementsTemperatureRange? get temperatureRange;

  WeatherRequirements._();

  factory WeatherRequirements([void updates(WeatherRequirementsBuilder b)]) = _$WeatherRequirements;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherRequirementsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherRequirements> get serializer => _$WeatherRequirementsSerializer();
}

class _$WeatherRequirementsSerializer implements PrimitiveSerializer<WeatherRequirements> {
  @override
  final Iterable<Type> types = const [WeatherRequirements, _$WeatherRequirements];

  @override
  final String wireName = r'WeatherRequirements';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherRequirements object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.maxWindSpeed != null) {
      yield r'max_wind_speed';
      yield serializers.serialize(
        object.maxWindSpeed,
        specifiedType: const FullType(double),
      );
    }
    if (object.minVisibility != null) {
      yield r'min_visibility';
      yield serializers.serialize(
        object.minVisibility,
        specifiedType: const FullType(double),
      );
    }
    if (object.maxPrecipitation != null) {
      yield r'max_precipitation';
      yield serializers.serialize(
        object.maxPrecipitation,
        specifiedType: const FullType(double),
      );
    }
    if (object.temperatureRange != null) {
      yield r'temperature_range';
      yield serializers.serialize(
        object.temperatureRange,
        specifiedType: const FullType(WeatherRequirementsTemperatureRange),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherRequirements object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeatherRequirementsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'max_wind_speed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maxWindSpeed = valueDes;
          break;
        case r'min_visibility':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minVisibility = valueDes;
          break;
        case r'max_precipitation':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maxPrecipitation = valueDes;
          break;
        case r'temperature_range':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(WeatherRequirementsTemperatureRange),
          ) as WeatherRequirementsTemperatureRange;
          result.temperatureRange.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherRequirements deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherRequirementsBuilder();
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


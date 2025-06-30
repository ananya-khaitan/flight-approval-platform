//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_requirements_temperature_range.g.dart';

/// WeatherRequirementsTemperatureRange
///
/// Properties:
/// * [minTemperature] - Minimum operating temperature in Celsius
/// * [maxTemperature] - Maximum operating temperature in Celsius
@BuiltValue()
abstract class WeatherRequirementsTemperatureRange implements Built<WeatherRequirementsTemperatureRange, WeatherRequirementsTemperatureRangeBuilder> {
  /// Minimum operating temperature in Celsius
  @BuiltValueField(wireName: r'min_temperature')
  double? get minTemperature;

  /// Maximum operating temperature in Celsius
  @BuiltValueField(wireName: r'max_temperature')
  double? get maxTemperature;

  WeatherRequirementsTemperatureRange._();

  factory WeatherRequirementsTemperatureRange([void updates(WeatherRequirementsTemperatureRangeBuilder b)]) = _$WeatherRequirementsTemperatureRange;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherRequirementsTemperatureRangeBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherRequirementsTemperatureRange> get serializer => _$WeatherRequirementsTemperatureRangeSerializer();
}

class _$WeatherRequirementsTemperatureRangeSerializer implements PrimitiveSerializer<WeatherRequirementsTemperatureRange> {
  @override
  final Iterable<Type> types = const [WeatherRequirementsTemperatureRange, _$WeatherRequirementsTemperatureRange];

  @override
  final String wireName = r'WeatherRequirementsTemperatureRange';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherRequirementsTemperatureRange object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minTemperature != null) {
      yield r'min_temperature';
      yield serializers.serialize(
        object.minTemperature,
        specifiedType: const FullType(double),
      );
    }
    if (object.maxTemperature != null) {
      yield r'max_temperature';
      yield serializers.serialize(
        object.maxTemperature,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherRequirementsTemperatureRange object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeatherRequirementsTemperatureRangeBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'min_temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minTemperature = valueDes;
          break;
        case r'max_temperature':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maxTemperature = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherRequirementsTemperatureRange deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherRequirementsTemperatureRangeBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/weather_data_point.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'weather_information.g.dart';

/// WeatherInformation
///
/// Properties:
/// * [forecastTime] 
/// * [weatherData] 
/// * [source_] - Weather information source
/// * [lastUpdated] 
@BuiltValue()
abstract class WeatherInformation implements Built<WeatherInformation, WeatherInformationBuilder> {
  @BuiltValueField(wireName: r'forecast_time')
  DateTime get forecastTime;

  @BuiltValueField(wireName: r'weather_data')
  BuiltList<WeatherDataPoint> get weatherData;

  /// Weather information source
  @BuiltValueField(wireName: r'source')
  String? get source_;

  @BuiltValueField(wireName: r'last_updated')
  DateTime? get lastUpdated;

  WeatherInformation._();

  factory WeatherInformation([void updates(WeatherInformationBuilder b)]) = _$WeatherInformation;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WeatherInformationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WeatherInformation> get serializer => _$WeatherInformationSerializer();
}

class _$WeatherInformationSerializer implements PrimitiveSerializer<WeatherInformation> {
  @override
  final Iterable<Type> types = const [WeatherInformation, _$WeatherInformation];

  @override
  final String wireName = r'WeatherInformation';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WeatherInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'forecast_time';
    yield serializers.serialize(
      object.forecastTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'weather_data';
    yield serializers.serialize(
      object.weatherData,
      specifiedType: const FullType(BuiltList, [FullType(WeatherDataPoint)]),
    );
    if (object.source_ != null) {
      yield r'source';
      yield serializers.serialize(
        object.source_,
        specifiedType: const FullType(String),
      );
    }
    if (object.lastUpdated != null) {
      yield r'last_updated';
      yield serializers.serialize(
        object.lastUpdated,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WeatherInformation object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WeatherInformationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'forecast_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.forecastTime = valueDes;
          break;
        case r'weather_data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WeatherDataPoint)]),
          ) as BuiltList<WeatherDataPoint>;
          result.weatherData.replace(valueDes);
          break;
        case r'source':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.source_ = valueDes;
          break;
        case r'last_updated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.lastUpdated = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WeatherInformation deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WeatherInformationBuilder();
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


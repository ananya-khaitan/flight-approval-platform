//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'time_period.g.dart';

/// TimePeriod
///
/// Properties:
/// * [startTime] 
/// * [endTime] 
@BuiltValue()
abstract class TimePeriod implements Built<TimePeriod, TimePeriodBuilder> {
  @BuiltValueField(wireName: r'start_time')
  DateTime get startTime;

  @BuiltValueField(wireName: r'end_time')
  DateTime get endTime;

  TimePeriod._();

  factory TimePeriod([void updates(TimePeriodBuilder b)]) = _$TimePeriod;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TimePeriodBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<TimePeriod> get serializer => _$TimePeriodSerializer();
}

class _$TimePeriodSerializer implements PrimitiveSerializer<TimePeriod> {
  @override
  final Iterable<Type> types = const [TimePeriod, _$TimePeriod];

  @override
  final String wireName = r'TimePeriod';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    TimePeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'start_time';
    yield serializers.serialize(
      object.startTime,
      specifiedType: const FullType(DateTime),
    );
    yield r'end_time';
    yield serializers.serialize(
      object.endTime,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    TimePeriod object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TimePeriodBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.startTime = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  TimePeriod deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TimePeriodBuilder();
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


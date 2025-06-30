//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'airspace_restriction_altitude_limits.g.dart';

/// AirspaceRestrictionAltitudeLimits
///
/// Properties:
/// * [minimumAltitude] 
/// * [maximumAltitude] 
@BuiltValue()
abstract class AirspaceRestrictionAltitudeLimits implements Built<AirspaceRestrictionAltitudeLimits, AirspaceRestrictionAltitudeLimitsBuilder> {
  @BuiltValueField(wireName: r'minimum_altitude')
  double? get minimumAltitude;

  @BuiltValueField(wireName: r'maximum_altitude')
  double? get maximumAltitude;

  AirspaceRestrictionAltitudeLimits._();

  factory AirspaceRestrictionAltitudeLimits([void updates(AirspaceRestrictionAltitudeLimitsBuilder b)]) = _$AirspaceRestrictionAltitudeLimits;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AirspaceRestrictionAltitudeLimitsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AirspaceRestrictionAltitudeLimits> get serializer => _$AirspaceRestrictionAltitudeLimitsSerializer();
}

class _$AirspaceRestrictionAltitudeLimitsSerializer implements PrimitiveSerializer<AirspaceRestrictionAltitudeLimits> {
  @override
  final Iterable<Type> types = const [AirspaceRestrictionAltitudeLimits, _$AirspaceRestrictionAltitudeLimits];

  @override
  final String wireName = r'AirspaceRestrictionAltitudeLimits';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AirspaceRestrictionAltitudeLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.minimumAltitude != null) {
      yield r'minimum_altitude';
      yield serializers.serialize(
        object.minimumAltitude,
        specifiedType: const FullType(double),
      );
    }
    if (object.maximumAltitude != null) {
      yield r'maximum_altitude';
      yield serializers.serialize(
        object.maximumAltitude,
        specifiedType: const FullType(double),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AirspaceRestrictionAltitudeLimits object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AirspaceRestrictionAltitudeLimitsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'minimum_altitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.minimumAltitude = valueDes;
          break;
        case r'maximum_altitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.maximumAltitude = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AirspaceRestrictionAltitudeLimits deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AirspaceRestrictionAltitudeLimitsBuilder();
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


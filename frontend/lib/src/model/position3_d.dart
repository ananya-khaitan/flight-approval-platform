//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'position3_d.g.dart';

/// Position3D
///
/// Properties:
/// * [latitude] - Latitude in decimal degrees (WGS84)
/// * [longitude] - Longitude in decimal degrees (WGS84)
/// * [altitude] - Altitude above mean sea level in meters
/// * [altitudeReference] 
@BuiltValue()
abstract class Position3D implements Built<Position3D, Position3DBuilder> {
  /// Latitude in decimal degrees (WGS84)
  @BuiltValueField(wireName: r'latitude')
  double get latitude;

  /// Longitude in decimal degrees (WGS84)
  @BuiltValueField(wireName: r'longitude')
  double get longitude;

  /// Altitude above mean sea level in meters
  @BuiltValueField(wireName: r'altitude')
  double get altitude;

  @BuiltValueField(wireName: r'altitude_reference')
  Position3DAltitudeReferenceEnum? get altitudeReference;
  // enum altitudeReferenceEnum {  MSL,  AGL,  WGS84,  };

  Position3D._();

  factory Position3D([void updates(Position3DBuilder b)]) = _$Position3D;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(Position3DBuilder b) => b
      ..altitudeReference = const Position3DAltitudeReferenceEnum._('MSL');

  @BuiltValueSerializer(custom: true)
  static Serializer<Position3D> get serializer => _$Position3DSerializer();
}

class _$Position3DSerializer implements PrimitiveSerializer<Position3D> {
  @override
  final Iterable<Type> types = const [Position3D, _$Position3D];

  @override
  final String wireName = r'Position3D';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Position3D object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'latitude';
    yield serializers.serialize(
      object.latitude,
      specifiedType: const FullType(double),
    );
    yield r'longitude';
    yield serializers.serialize(
      object.longitude,
      specifiedType: const FullType(double),
    );
    yield r'altitude';
    yield serializers.serialize(
      object.altitude,
      specifiedType: const FullType(double),
    );
    if (object.altitudeReference != null) {
      yield r'altitude_reference';
      yield serializers.serialize(
        object.altitudeReference,
        specifiedType: const FullType(Position3DAltitudeReferenceEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Position3D object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required Position3DBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'latitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.latitude = valueDes;
          break;
        case r'longitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.longitude = valueDes;
          break;
        case r'altitude':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(double),
          ) as double;
          result.altitude = valueDes;
          break;
        case r'altitude_reference':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Position3DAltitudeReferenceEnum),
          ) as Position3DAltitudeReferenceEnum;
          result.altitudeReference = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Position3D deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = Position3DBuilder();
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

class Position3DAltitudeReferenceEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'MSL')
  static const Position3DAltitudeReferenceEnum MSL = _$position3DAltitudeReferenceEnum_MSL;
  @BuiltValueEnumConst(wireName: r'AGL')
  static const Position3DAltitudeReferenceEnum AGL = _$position3DAltitudeReferenceEnum_AGL;
  @BuiltValueEnumConst(wireName: r'WGS84')
  static const Position3DAltitudeReferenceEnum wGS84 = _$position3DAltitudeReferenceEnum_wGS84;

  static Serializer<Position3DAltitudeReferenceEnum> get serializer => _$position3DAltitudeReferenceEnumSerializer;

  const Position3DAltitudeReferenceEnum._(String name): super(name);

  static BuiltSet<Position3DAltitudeReferenceEnum> get values => _$position3DAltitudeReferenceEnumValues;
  static Position3DAltitudeReferenceEnum valueOf(String name) => _$position3DAltitudeReferenceEnumValueOf(name);
}


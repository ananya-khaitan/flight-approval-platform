//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'geographic_area.g.dart';

/// GeographicArea
///
/// Properties:
/// * [areaType] 
/// * [coordinates] - Coordinates defining the area (format depends on area_type)
@BuiltValue()
abstract class GeographicArea implements Built<GeographicArea, GeographicAreaBuilder> {
  @BuiltValueField(wireName: r'area_type')
  GeographicAreaAreaTypeEnum get areaType;
  // enum areaTypeEnum {  polygon,  circle,  rectangle,  };

  /// Coordinates defining the area (format depends on area_type)
  @BuiltValueField(wireName: r'coordinates')
  BuiltList<num>? get coordinates;

  GeographicArea._();

  factory GeographicArea([void updates(GeographicAreaBuilder b)]) = _$GeographicArea;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GeographicAreaBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GeographicArea> get serializer => _$GeographicAreaSerializer();
}

class _$GeographicAreaSerializer implements PrimitiveSerializer<GeographicArea> {
  @override
  final Iterable<Type> types = const [GeographicArea, _$GeographicArea];

  @override
  final String wireName = r'GeographicArea';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GeographicArea object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'area_type';
    yield serializers.serialize(
      object.areaType,
      specifiedType: const FullType(GeographicAreaAreaTypeEnum),
    );
    if (object.coordinates != null) {
      yield r'coordinates';
      yield serializers.serialize(
        object.coordinates,
        specifiedType: const FullType(BuiltList, [FullType(num)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    GeographicArea object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GeographicAreaBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'area_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GeographicAreaAreaTypeEnum),
          ) as GeographicAreaAreaTypeEnum;
          result.areaType = valueDes;
          break;
        case r'coordinates':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(num)]),
          ) as BuiltList<num>;
          result.coordinates.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  GeographicArea deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GeographicAreaBuilder();
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

class GeographicAreaAreaTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'polygon')
  static const GeographicAreaAreaTypeEnum polygon = _$geographicAreaAreaTypeEnum_polygon;
  @BuiltValueEnumConst(wireName: r'circle')
  static const GeographicAreaAreaTypeEnum circle = _$geographicAreaAreaTypeEnum_circle;
  @BuiltValueEnumConst(wireName: r'rectangle')
  static const GeographicAreaAreaTypeEnum rectangle = _$geographicAreaAreaTypeEnum_rectangle;

  static Serializer<GeographicAreaAreaTypeEnum> get serializer => _$geographicAreaAreaTypeEnumSerializer;

  const GeographicAreaAreaTypeEnum._(String name): super(name);

  static BuiltSet<GeographicAreaAreaTypeEnum> get values => _$geographicAreaAreaTypeEnumValues;
  static GeographicAreaAreaTypeEnum valueOf(String name) => _$geographicAreaAreaTypeEnumValueOf(name);
}


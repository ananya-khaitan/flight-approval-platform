//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/airspace_restriction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'get_airspace_restrictions200_response.g.dart';

/// GetAirspaceRestrictions200Response
///
/// Properties:
/// * [restrictions] 
/// * [lastUpdated] 
@BuiltValue()
abstract class GetAirspaceRestrictions200Response implements Built<GetAirspaceRestrictions200Response, GetAirspaceRestrictions200ResponseBuilder> {
  @BuiltValueField(wireName: r'restrictions')
  BuiltList<AirspaceRestriction>? get restrictions;

  @BuiltValueField(wireName: r'last_updated')
  DateTime? get lastUpdated;

  GetAirspaceRestrictions200Response._();

  factory GetAirspaceRestrictions200Response([void updates(GetAirspaceRestrictions200ResponseBuilder b)]) = _$GetAirspaceRestrictions200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(GetAirspaceRestrictions200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<GetAirspaceRestrictions200Response> get serializer => _$GetAirspaceRestrictions200ResponseSerializer();
}

class _$GetAirspaceRestrictions200ResponseSerializer implements PrimitiveSerializer<GetAirspaceRestrictions200Response> {
  @override
  final Iterable<Type> types = const [GetAirspaceRestrictions200Response, _$GetAirspaceRestrictions200Response];

  @override
  final String wireName = r'GetAirspaceRestrictions200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    GetAirspaceRestrictions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.restrictions != null) {
      yield r'restrictions';
      yield serializers.serialize(
        object.restrictions,
        specifiedType: const FullType(BuiltList, [FullType(AirspaceRestriction)]),
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
    GetAirspaceRestrictions200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required GetAirspaceRestrictions200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restrictions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AirspaceRestriction)]),
          ) as BuiltList<AirspaceRestriction>;
          result.restrictions.replace(valueDes);
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
  GetAirspaceRestrictions200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = GetAirspaceRestrictions200ResponseBuilder();
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


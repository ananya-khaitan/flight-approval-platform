//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/alternative_authorization.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'conflict_response.g.dart';

/// ConflictResponse
///
/// Properties:
/// * [conflictType] 
/// * [message] 
/// * [conflictingAuthorizations] - IDs of conflicting authorizations
/// * [suggestedAlternatives] 
@BuiltValue()
abstract class ConflictResponse implements Built<ConflictResponse, ConflictResponseBuilder> {
  @BuiltValueField(wireName: r'conflict_type')
  ConflictResponseConflictTypeEnum get conflictType;
  // enum conflictTypeEnum {  temporal_conflict,  spatial_conflict,  priority_conflict,  capacity_limit,  };

  @BuiltValueField(wireName: r'message')
  String get message;

  /// IDs of conflicting authorizations
  @BuiltValueField(wireName: r'conflicting_authorizations')
  BuiltList<String>? get conflictingAuthorizations;

  @BuiltValueField(wireName: r'suggested_alternatives')
  BuiltList<AlternativeAuthorization>? get suggestedAlternatives;

  ConflictResponse._();

  factory ConflictResponse([void updates(ConflictResponseBuilder b)]) = _$ConflictResponse;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ConflictResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ConflictResponse> get serializer => _$ConflictResponseSerializer();
}

class _$ConflictResponseSerializer implements PrimitiveSerializer<ConflictResponse> {
  @override
  final Iterable<Type> types = const [ConflictResponse, _$ConflictResponse];

  @override
  final String wireName = r'ConflictResponse';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ConflictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'conflict_type';
    yield serializers.serialize(
      object.conflictType,
      specifiedType: const FullType(ConflictResponseConflictTypeEnum),
    );
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    if (object.conflictingAuthorizations != null) {
      yield r'conflicting_authorizations';
      yield serializers.serialize(
        object.conflictingAuthorizations,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.suggestedAlternatives != null) {
      yield r'suggested_alternatives';
      yield serializers.serialize(
        object.suggestedAlternatives,
        specifiedType: const FullType(BuiltList, [FullType(AlternativeAuthorization)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ConflictResponse object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ConflictResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'conflict_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ConflictResponseConflictTypeEnum),
          ) as ConflictResponseConflictTypeEnum;
          result.conflictType = valueDes;
          break;
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'conflicting_authorizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.conflictingAuthorizations.replace(valueDes);
          break;
        case r'suggested_alternatives':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(AlternativeAuthorization)]),
          ) as BuiltList<AlternativeAuthorization>;
          result.suggestedAlternatives.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ConflictResponse deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ConflictResponseBuilder();
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

class ConflictResponseConflictTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'temporal_conflict')
  static const ConflictResponseConflictTypeEnum temporalConflict = _$conflictResponseConflictTypeEnum_temporalConflict;
  @BuiltValueEnumConst(wireName: r'spatial_conflict')
  static const ConflictResponseConflictTypeEnum spatialConflict = _$conflictResponseConflictTypeEnum_spatialConflict;
  @BuiltValueEnumConst(wireName: r'priority_conflict')
  static const ConflictResponseConflictTypeEnum priorityConflict = _$conflictResponseConflictTypeEnum_priorityConflict;
  @BuiltValueEnumConst(wireName: r'capacity_limit')
  static const ConflictResponseConflictTypeEnum capacityLimit = _$conflictResponseConflictTypeEnum_capacityLimit;

  static Serializer<ConflictResponseConflictTypeEnum> get serializer => _$conflictResponseConflictTypeEnumSerializer;

  const ConflictResponseConflictTypeEnum._(String name): super(name);

  static BuiltSet<ConflictResponseConflictTypeEnum> get values => _$conflictResponseConflictTypeEnumValues;
  static ConflictResponseConflictTypeEnum valueOf(String name) => _$conflictResponseConflictTypeEnumValueOf(name);
}


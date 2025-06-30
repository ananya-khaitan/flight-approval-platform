//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/geographic_area.dart';
import 'package:app/src/model/time_period.dart';
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/airspace_restriction_altitude_limits.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'airspace_restriction.g.dart';

/// AirspaceRestriction
///
/// Properties:
/// * [restrictionId] 
/// * [restrictionType] 
/// * [affectedArea] 
/// * [effectivePeriod] 
/// * [altitudeLimits] 
/// * [entryRequirements] - Special permissions or equipment required
/// * [description] 
@BuiltValue()
abstract class AirspaceRestriction implements Built<AirspaceRestriction, AirspaceRestrictionBuilder> {
  @BuiltValueField(wireName: r'restriction_id')
  String get restrictionId;

  @BuiltValueField(wireName: r'restriction_type')
  AirspaceRestrictionRestrictionTypeEnum get restrictionType;
  // enum restrictionTypeEnum {  permanent,  temporary,  dynamic,  no_fly_zone,  restricted_access,  };

  @BuiltValueField(wireName: r'affected_area')
  GeographicArea get affectedArea;

  @BuiltValueField(wireName: r'effective_period')
  TimePeriod get effectivePeriod;

  @BuiltValueField(wireName: r'altitude_limits')
  AirspaceRestrictionAltitudeLimits? get altitudeLimits;

  /// Special permissions or equipment required
  @BuiltValueField(wireName: r'entry_requirements')
  BuiltList<String>? get entryRequirements;

  @BuiltValueField(wireName: r'description')
  String? get description;

  AirspaceRestriction._();

  factory AirspaceRestriction([void updates(AirspaceRestrictionBuilder b)]) = _$AirspaceRestriction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AirspaceRestrictionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AirspaceRestriction> get serializer => _$AirspaceRestrictionSerializer();
}

class _$AirspaceRestrictionSerializer implements PrimitiveSerializer<AirspaceRestriction> {
  @override
  final Iterable<Type> types = const [AirspaceRestriction, _$AirspaceRestriction];

  @override
  final String wireName = r'AirspaceRestriction';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AirspaceRestriction object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'restriction_id';
    yield serializers.serialize(
      object.restrictionId,
      specifiedType: const FullType(String),
    );
    yield r'restriction_type';
    yield serializers.serialize(
      object.restrictionType,
      specifiedType: const FullType(AirspaceRestrictionRestrictionTypeEnum),
    );
    yield r'affected_area';
    yield serializers.serialize(
      object.affectedArea,
      specifiedType: const FullType(GeographicArea),
    );
    yield r'effective_period';
    yield serializers.serialize(
      object.effectivePeriod,
      specifiedType: const FullType(TimePeriod),
    );
    if (object.altitudeLimits != null) {
      yield r'altitude_limits';
      yield serializers.serialize(
        object.altitudeLimits,
        specifiedType: const FullType(AirspaceRestrictionAltitudeLimits),
      );
    }
    if (object.entryRequirements != null) {
      yield r'entry_requirements';
      yield serializers.serialize(
        object.entryRequirements,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AirspaceRestriction object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AirspaceRestrictionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'restriction_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.restrictionId = valueDes;
          break;
        case r'restriction_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AirspaceRestrictionRestrictionTypeEnum),
          ) as AirspaceRestrictionRestrictionTypeEnum;
          result.restrictionType = valueDes;
          break;
        case r'affected_area':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(GeographicArea),
          ) as GeographicArea;
          result.affectedArea.replace(valueDes);
          break;
        case r'effective_period':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TimePeriod),
          ) as TimePeriod;
          result.effectivePeriod.replace(valueDes);
          break;
        case r'altitude_limits':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(AirspaceRestrictionAltitudeLimits),
          ) as AirspaceRestrictionAltitudeLimits;
          result.altitudeLimits.replace(valueDes);
          break;
        case r'entry_requirements':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.entryRequirements.replace(valueDes);
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AirspaceRestriction deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AirspaceRestrictionBuilder();
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

class AirspaceRestrictionRestrictionTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'permanent')
  static const AirspaceRestrictionRestrictionTypeEnum permanent = _$airspaceRestrictionRestrictionTypeEnum_permanent;
  @BuiltValueEnumConst(wireName: r'temporary')
  static const AirspaceRestrictionRestrictionTypeEnum temporary = _$airspaceRestrictionRestrictionTypeEnum_temporary;
  @BuiltValueEnumConst(wireName: r'dynamic')
  static const AirspaceRestrictionRestrictionTypeEnum dynamic_ = _$airspaceRestrictionRestrictionTypeEnum_dynamic_;
  @BuiltValueEnumConst(wireName: r'no_fly_zone')
  static const AirspaceRestrictionRestrictionTypeEnum noFlyZone = _$airspaceRestrictionRestrictionTypeEnum_noFlyZone;
  @BuiltValueEnumConst(wireName: r'restricted_access')
  static const AirspaceRestrictionRestrictionTypeEnum restrictedAccess = _$airspaceRestrictionRestrictionTypeEnum_restrictedAccess;

  static Serializer<AirspaceRestrictionRestrictionTypeEnum> get serializer => _$airspaceRestrictionRestrictionTypeEnumSerializer;

  const AirspaceRestrictionRestrictionTypeEnum._(String name): super(name);

  static BuiltSet<AirspaceRestrictionRestrictionTypeEnum> get values => _$airspaceRestrictionRestrictionTypeEnumValues;
  static AirspaceRestrictionRestrictionTypeEnum valueOf(String name) => _$airspaceRestrictionRestrictionTypeEnumValueOf(name);
}


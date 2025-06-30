//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/safe_landing_area.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'contingency_procedure.g.dart';

/// ContingencyProcedure
///
/// Properties:
/// * [triggerCondition] 
/// * [procedureType] 
/// * [safeLandingAreas] 
@BuiltValue()
abstract class ContingencyProcedure implements Built<ContingencyProcedure, ContingencyProcedureBuilder> {
  @BuiltValueField(wireName: r'trigger_condition')
  ContingencyProcedureTriggerConditionEnum get triggerCondition;
  // enum triggerConditionEnum {  communication_loss,  technical_failure,  weather_degradation,  emergency_aircraft,  };

  @BuiltValueField(wireName: r'procedure_type')
  ContingencyProcedureProcedureTypeEnum get procedureType;
  // enum procedureTypeEnum {  return_to_home,  emergency_landing,  hold_position,  predetermined_route,  };

  @BuiltValueField(wireName: r'safe_landing_areas')
  BuiltList<SafeLandingArea> get safeLandingAreas;

  ContingencyProcedure._();

  factory ContingencyProcedure([void updates(ContingencyProcedureBuilder b)]) = _$ContingencyProcedure;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ContingencyProcedureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ContingencyProcedure> get serializer => _$ContingencyProcedureSerializer();
}

class _$ContingencyProcedureSerializer implements PrimitiveSerializer<ContingencyProcedure> {
  @override
  final Iterable<Type> types = const [ContingencyProcedure, _$ContingencyProcedure];

  @override
  final String wireName = r'ContingencyProcedure';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ContingencyProcedure object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'trigger_condition';
    yield serializers.serialize(
      object.triggerCondition,
      specifiedType: const FullType(ContingencyProcedureTriggerConditionEnum),
    );
    yield r'procedure_type';
    yield serializers.serialize(
      object.procedureType,
      specifiedType: const FullType(ContingencyProcedureProcedureTypeEnum),
    );
    yield r'safe_landing_areas';
    yield serializers.serialize(
      object.safeLandingAreas,
      specifiedType: const FullType(BuiltList, [FullType(SafeLandingArea)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ContingencyProcedure object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ContingencyProcedureBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trigger_condition':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContingencyProcedureTriggerConditionEnum),
          ) as ContingencyProcedureTriggerConditionEnum;
          result.triggerCondition = valueDes;
          break;
        case r'procedure_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ContingencyProcedureProcedureTypeEnum),
          ) as ContingencyProcedureProcedureTypeEnum;
          result.procedureType = valueDes;
          break;
        case r'safe_landing_areas':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(SafeLandingArea)]),
          ) as BuiltList<SafeLandingArea>;
          result.safeLandingAreas.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ContingencyProcedure deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ContingencyProcedureBuilder();
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

class ContingencyProcedureTriggerConditionEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'communication_loss')
  static const ContingencyProcedureTriggerConditionEnum communicationLoss = _$contingencyProcedureTriggerConditionEnum_communicationLoss;
  @BuiltValueEnumConst(wireName: r'technical_failure')
  static const ContingencyProcedureTriggerConditionEnum technicalFailure = _$contingencyProcedureTriggerConditionEnum_technicalFailure;
  @BuiltValueEnumConst(wireName: r'weather_degradation')
  static const ContingencyProcedureTriggerConditionEnum weatherDegradation = _$contingencyProcedureTriggerConditionEnum_weatherDegradation;
  @BuiltValueEnumConst(wireName: r'emergency_aircraft')
  static const ContingencyProcedureTriggerConditionEnum emergencyAircraft = _$contingencyProcedureTriggerConditionEnum_emergencyAircraft;

  static Serializer<ContingencyProcedureTriggerConditionEnum> get serializer => _$contingencyProcedureTriggerConditionEnumSerializer;

  const ContingencyProcedureTriggerConditionEnum._(String name): super(name);

  static BuiltSet<ContingencyProcedureTriggerConditionEnum> get values => _$contingencyProcedureTriggerConditionEnumValues;
  static ContingencyProcedureTriggerConditionEnum valueOf(String name) => _$contingencyProcedureTriggerConditionEnumValueOf(name);
}

class ContingencyProcedureProcedureTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'return_to_home')
  static const ContingencyProcedureProcedureTypeEnum returnToHome = _$contingencyProcedureProcedureTypeEnum_returnToHome;
  @BuiltValueEnumConst(wireName: r'emergency_landing')
  static const ContingencyProcedureProcedureTypeEnum emergencyLanding = _$contingencyProcedureProcedureTypeEnum_emergencyLanding;
  @BuiltValueEnumConst(wireName: r'hold_position')
  static const ContingencyProcedureProcedureTypeEnum holdPosition = _$contingencyProcedureProcedureTypeEnum_holdPosition;
  @BuiltValueEnumConst(wireName: r'predetermined_route')
  static const ContingencyProcedureProcedureTypeEnum predeterminedRoute = _$contingencyProcedureProcedureTypeEnum_predeterminedRoute;

  static Serializer<ContingencyProcedureProcedureTypeEnum> get serializer => _$contingencyProcedureProcedureTypeEnumSerializer;

  const ContingencyProcedureProcedureTypeEnum._(String name): super(name);

  static BuiltSet<ContingencyProcedureProcedureTypeEnum> get values => _$contingencyProcedureProcedureTypeEnumValues;
  static ContingencyProcedureProcedureTypeEnum valueOf(String name) => _$contingencyProcedureProcedureTypeEnumValueOf(name);
}


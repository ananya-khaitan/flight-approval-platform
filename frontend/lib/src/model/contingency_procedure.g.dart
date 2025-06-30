// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contingency_procedure.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ContingencyProcedureTriggerConditionEnum
    _$contingencyProcedureTriggerConditionEnum_communicationLoss =
    const ContingencyProcedureTriggerConditionEnum._('communicationLoss');
const ContingencyProcedureTriggerConditionEnum
    _$contingencyProcedureTriggerConditionEnum_technicalFailure =
    const ContingencyProcedureTriggerConditionEnum._('technicalFailure');
const ContingencyProcedureTriggerConditionEnum
    _$contingencyProcedureTriggerConditionEnum_weatherDegradation =
    const ContingencyProcedureTriggerConditionEnum._('weatherDegradation');
const ContingencyProcedureTriggerConditionEnum
    _$contingencyProcedureTriggerConditionEnum_emergencyAircraft =
    const ContingencyProcedureTriggerConditionEnum._('emergencyAircraft');

ContingencyProcedureTriggerConditionEnum
    _$contingencyProcedureTriggerConditionEnumValueOf(String name) {
  switch (name) {
    case 'communicationLoss':
      return _$contingencyProcedureTriggerConditionEnum_communicationLoss;
    case 'technicalFailure':
      return _$contingencyProcedureTriggerConditionEnum_technicalFailure;
    case 'weatherDegradation':
      return _$contingencyProcedureTriggerConditionEnum_weatherDegradation;
    case 'emergencyAircraft':
      return _$contingencyProcedureTriggerConditionEnum_emergencyAircraft;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContingencyProcedureTriggerConditionEnum>
    _$contingencyProcedureTriggerConditionEnumValues = BuiltSet<
        ContingencyProcedureTriggerConditionEnum>(const <ContingencyProcedureTriggerConditionEnum>[
  _$contingencyProcedureTriggerConditionEnum_communicationLoss,
  _$contingencyProcedureTriggerConditionEnum_technicalFailure,
  _$contingencyProcedureTriggerConditionEnum_weatherDegradation,
  _$contingencyProcedureTriggerConditionEnum_emergencyAircraft,
]);

const ContingencyProcedureProcedureTypeEnum
    _$contingencyProcedureProcedureTypeEnum_returnToHome =
    const ContingencyProcedureProcedureTypeEnum._('returnToHome');
const ContingencyProcedureProcedureTypeEnum
    _$contingencyProcedureProcedureTypeEnum_emergencyLanding =
    const ContingencyProcedureProcedureTypeEnum._('emergencyLanding');
const ContingencyProcedureProcedureTypeEnum
    _$contingencyProcedureProcedureTypeEnum_holdPosition =
    const ContingencyProcedureProcedureTypeEnum._('holdPosition');
const ContingencyProcedureProcedureTypeEnum
    _$contingencyProcedureProcedureTypeEnum_predeterminedRoute =
    const ContingencyProcedureProcedureTypeEnum._('predeterminedRoute');

ContingencyProcedureProcedureTypeEnum
    _$contingencyProcedureProcedureTypeEnumValueOf(String name) {
  switch (name) {
    case 'returnToHome':
      return _$contingencyProcedureProcedureTypeEnum_returnToHome;
    case 'emergencyLanding':
      return _$contingencyProcedureProcedureTypeEnum_emergencyLanding;
    case 'holdPosition':
      return _$contingencyProcedureProcedureTypeEnum_holdPosition;
    case 'predeterminedRoute':
      return _$contingencyProcedureProcedureTypeEnum_predeterminedRoute;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ContingencyProcedureProcedureTypeEnum>
    _$contingencyProcedureProcedureTypeEnumValues = BuiltSet<
        ContingencyProcedureProcedureTypeEnum>(const <ContingencyProcedureProcedureTypeEnum>[
  _$contingencyProcedureProcedureTypeEnum_returnToHome,
  _$contingencyProcedureProcedureTypeEnum_emergencyLanding,
  _$contingencyProcedureProcedureTypeEnum_holdPosition,
  _$contingencyProcedureProcedureTypeEnum_predeterminedRoute,
]);

Serializer<ContingencyProcedureTriggerConditionEnum>
    _$contingencyProcedureTriggerConditionEnumSerializer =
    _$ContingencyProcedureTriggerConditionEnumSerializer();
Serializer<ContingencyProcedureProcedureTypeEnum>
    _$contingencyProcedureProcedureTypeEnumSerializer =
    _$ContingencyProcedureProcedureTypeEnumSerializer();

class _$ContingencyProcedureTriggerConditionEnumSerializer
    implements PrimitiveSerializer<ContingencyProcedureTriggerConditionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'communicationLoss': 'communication_loss',
    'technicalFailure': 'technical_failure',
    'weatherDegradation': 'weather_degradation',
    'emergencyAircraft': 'emergency_aircraft',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'communication_loss': 'communicationLoss',
    'technical_failure': 'technicalFailure',
    'weather_degradation': 'weatherDegradation',
    'emergency_aircraft': 'emergencyAircraft',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContingencyProcedureTriggerConditionEnum
  ];
  @override
  final String wireName = 'ContingencyProcedureTriggerConditionEnum';

  @override
  Object serialize(Serializers serializers,
          ContingencyProcedureTriggerConditionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ContingencyProcedureTriggerConditionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ContingencyProcedureTriggerConditionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ContingencyProcedureProcedureTypeEnumSerializer
    implements PrimitiveSerializer<ContingencyProcedureProcedureTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'returnToHome': 'return_to_home',
    'emergencyLanding': 'emergency_landing',
    'holdPosition': 'hold_position',
    'predeterminedRoute': 'predetermined_route',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'return_to_home': 'returnToHome',
    'emergency_landing': 'emergencyLanding',
    'hold_position': 'holdPosition',
    'predetermined_route': 'predeterminedRoute',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ContingencyProcedureProcedureTypeEnum
  ];
  @override
  final String wireName = 'ContingencyProcedureProcedureTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ContingencyProcedureProcedureTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ContingencyProcedureProcedureTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ContingencyProcedureProcedureTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ContingencyProcedure extends ContingencyProcedure {
  @override
  final ContingencyProcedureTriggerConditionEnum triggerCondition;
  @override
  final ContingencyProcedureProcedureTypeEnum procedureType;
  @override
  final BuiltList<SafeLandingArea> safeLandingAreas;

  factory _$ContingencyProcedure(
          [void Function(ContingencyProcedureBuilder)? updates]) =>
      (ContingencyProcedureBuilder()..update(updates))._build();

  _$ContingencyProcedure._(
      {required this.triggerCondition,
      required this.procedureType,
      required this.safeLandingAreas})
      : super._();
  @override
  ContingencyProcedure rebuild(
          void Function(ContingencyProcedureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContingencyProcedureBuilder toBuilder() =>
      ContingencyProcedureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContingencyProcedure &&
        triggerCondition == other.triggerCondition &&
        procedureType == other.procedureType &&
        safeLandingAreas == other.safeLandingAreas;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, triggerCondition.hashCode);
    _$hash = $jc(_$hash, procedureType.hashCode);
    _$hash = $jc(_$hash, safeLandingAreas.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ContingencyProcedure')
          ..add('triggerCondition', triggerCondition)
          ..add('procedureType', procedureType)
          ..add('safeLandingAreas', safeLandingAreas))
        .toString();
  }
}

class ContingencyProcedureBuilder
    implements Builder<ContingencyProcedure, ContingencyProcedureBuilder> {
  _$ContingencyProcedure? _$v;

  ContingencyProcedureTriggerConditionEnum? _triggerCondition;
  ContingencyProcedureTriggerConditionEnum? get triggerCondition =>
      _$this._triggerCondition;
  set triggerCondition(
          ContingencyProcedureTriggerConditionEnum? triggerCondition) =>
      _$this._triggerCondition = triggerCondition;

  ContingencyProcedureProcedureTypeEnum? _procedureType;
  ContingencyProcedureProcedureTypeEnum? get procedureType =>
      _$this._procedureType;
  set procedureType(ContingencyProcedureProcedureTypeEnum? procedureType) =>
      _$this._procedureType = procedureType;

  ListBuilder<SafeLandingArea>? _safeLandingAreas;
  ListBuilder<SafeLandingArea> get safeLandingAreas =>
      _$this._safeLandingAreas ??= ListBuilder<SafeLandingArea>();
  set safeLandingAreas(ListBuilder<SafeLandingArea>? safeLandingAreas) =>
      _$this._safeLandingAreas = safeLandingAreas;

  ContingencyProcedureBuilder() {
    ContingencyProcedure._defaults(this);
  }

  ContingencyProcedureBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _triggerCondition = $v.triggerCondition;
      _procedureType = $v.procedureType;
      _safeLandingAreas = $v.safeLandingAreas.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContingencyProcedure other) {
    _$v = other as _$ContingencyProcedure;
  }

  @override
  void update(void Function(ContingencyProcedureBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ContingencyProcedure build() => _build();

  _$ContingencyProcedure _build() {
    _$ContingencyProcedure _$result;
    try {
      _$result = _$v ??
          _$ContingencyProcedure._(
            triggerCondition: BuiltValueNullFieldError.checkNotNull(
                triggerCondition, r'ContingencyProcedure', 'triggerCondition'),
            procedureType: BuiltValueNullFieldError.checkNotNull(
                procedureType, r'ContingencyProcedure', 'procedureType'),
            safeLandingAreas: safeLandingAreas.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'safeLandingAreas';
        safeLandingAreas.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ContingencyProcedure', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airspace_restriction.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnum_permanent =
    const AirspaceRestrictionRestrictionTypeEnum._('permanent');
const AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnum_temporary =
    const AirspaceRestrictionRestrictionTypeEnum._('temporary');
const AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnum_dynamic_ =
    const AirspaceRestrictionRestrictionTypeEnum._('dynamic_');
const AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnum_noFlyZone =
    const AirspaceRestrictionRestrictionTypeEnum._('noFlyZone');
const AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnum_restrictedAccess =
    const AirspaceRestrictionRestrictionTypeEnum._('restrictedAccess');

AirspaceRestrictionRestrictionTypeEnum
    _$airspaceRestrictionRestrictionTypeEnumValueOf(String name) {
  switch (name) {
    case 'permanent':
      return _$airspaceRestrictionRestrictionTypeEnum_permanent;
    case 'temporary':
      return _$airspaceRestrictionRestrictionTypeEnum_temporary;
    case 'dynamic_':
      return _$airspaceRestrictionRestrictionTypeEnum_dynamic_;
    case 'noFlyZone':
      return _$airspaceRestrictionRestrictionTypeEnum_noFlyZone;
    case 'restrictedAccess':
      return _$airspaceRestrictionRestrictionTypeEnum_restrictedAccess;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<AirspaceRestrictionRestrictionTypeEnum>
    _$airspaceRestrictionRestrictionTypeEnumValues = BuiltSet<
        AirspaceRestrictionRestrictionTypeEnum>(const <AirspaceRestrictionRestrictionTypeEnum>[
  _$airspaceRestrictionRestrictionTypeEnum_permanent,
  _$airspaceRestrictionRestrictionTypeEnum_temporary,
  _$airspaceRestrictionRestrictionTypeEnum_dynamic_,
  _$airspaceRestrictionRestrictionTypeEnum_noFlyZone,
  _$airspaceRestrictionRestrictionTypeEnum_restrictedAccess,
]);

Serializer<AirspaceRestrictionRestrictionTypeEnum>
    _$airspaceRestrictionRestrictionTypeEnumSerializer =
    _$AirspaceRestrictionRestrictionTypeEnumSerializer();

class _$AirspaceRestrictionRestrictionTypeEnumSerializer
    implements PrimitiveSerializer<AirspaceRestrictionRestrictionTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'permanent': 'permanent',
    'temporary': 'temporary',
    'dynamic_': 'dynamic',
    'noFlyZone': 'no_fly_zone',
    'restrictedAccess': 'restricted_access',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'permanent': 'permanent',
    'temporary': 'temporary',
    'dynamic': 'dynamic_',
    'no_fly_zone': 'noFlyZone',
    'restricted_access': 'restrictedAccess',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AirspaceRestrictionRestrictionTypeEnum
  ];
  @override
  final String wireName = 'AirspaceRestrictionRestrictionTypeEnum';

  @override
  Object serialize(Serializers serializers,
          AirspaceRestrictionRestrictionTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AirspaceRestrictionRestrictionTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AirspaceRestrictionRestrictionTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$AirspaceRestriction extends AirspaceRestriction {
  @override
  final String restrictionId;
  @override
  final AirspaceRestrictionRestrictionTypeEnum restrictionType;
  @override
  final GeographicArea affectedArea;
  @override
  final TimePeriod effectivePeriod;
  @override
  final AirspaceRestrictionAltitudeLimits? altitudeLimits;
  @override
  final BuiltList<String>? entryRequirements;
  @override
  final String? description;

  factory _$AirspaceRestriction(
          [void Function(AirspaceRestrictionBuilder)? updates]) =>
      (AirspaceRestrictionBuilder()..update(updates))._build();

  _$AirspaceRestriction._(
      {required this.restrictionId,
      required this.restrictionType,
      required this.affectedArea,
      required this.effectivePeriod,
      this.altitudeLimits,
      this.entryRequirements,
      this.description})
      : super._();
  @override
  AirspaceRestriction rebuild(
          void Function(AirspaceRestrictionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AirspaceRestrictionBuilder toBuilder() =>
      AirspaceRestrictionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AirspaceRestriction &&
        restrictionId == other.restrictionId &&
        restrictionType == other.restrictionType &&
        affectedArea == other.affectedArea &&
        effectivePeriod == other.effectivePeriod &&
        altitudeLimits == other.altitudeLimits &&
        entryRequirements == other.entryRequirements &&
        description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restrictionId.hashCode);
    _$hash = $jc(_$hash, restrictionType.hashCode);
    _$hash = $jc(_$hash, affectedArea.hashCode);
    _$hash = $jc(_$hash, effectivePeriod.hashCode);
    _$hash = $jc(_$hash, altitudeLimits.hashCode);
    _$hash = $jc(_$hash, entryRequirements.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AirspaceRestriction')
          ..add('restrictionId', restrictionId)
          ..add('restrictionType', restrictionType)
          ..add('affectedArea', affectedArea)
          ..add('effectivePeriod', effectivePeriod)
          ..add('altitudeLimits', altitudeLimits)
          ..add('entryRequirements', entryRequirements)
          ..add('description', description))
        .toString();
  }
}

class AirspaceRestrictionBuilder
    implements Builder<AirspaceRestriction, AirspaceRestrictionBuilder> {
  _$AirspaceRestriction? _$v;

  String? _restrictionId;
  String? get restrictionId => _$this._restrictionId;
  set restrictionId(String? restrictionId) =>
      _$this._restrictionId = restrictionId;

  AirspaceRestrictionRestrictionTypeEnum? _restrictionType;
  AirspaceRestrictionRestrictionTypeEnum? get restrictionType =>
      _$this._restrictionType;
  set restrictionType(
          AirspaceRestrictionRestrictionTypeEnum? restrictionType) =>
      _$this._restrictionType = restrictionType;

  GeographicAreaBuilder? _affectedArea;
  GeographicAreaBuilder get affectedArea =>
      _$this._affectedArea ??= GeographicAreaBuilder();
  set affectedArea(GeographicAreaBuilder? affectedArea) =>
      _$this._affectedArea = affectedArea;

  TimePeriodBuilder? _effectivePeriod;
  TimePeriodBuilder get effectivePeriod =>
      _$this._effectivePeriod ??= TimePeriodBuilder();
  set effectivePeriod(TimePeriodBuilder? effectivePeriod) =>
      _$this._effectivePeriod = effectivePeriod;

  AirspaceRestrictionAltitudeLimitsBuilder? _altitudeLimits;
  AirspaceRestrictionAltitudeLimitsBuilder get altitudeLimits =>
      _$this._altitudeLimits ??= AirspaceRestrictionAltitudeLimitsBuilder();
  set altitudeLimits(
          AirspaceRestrictionAltitudeLimitsBuilder? altitudeLimits) =>
      _$this._altitudeLimits = altitudeLimits;

  ListBuilder<String>? _entryRequirements;
  ListBuilder<String> get entryRequirements =>
      _$this._entryRequirements ??= ListBuilder<String>();
  set entryRequirements(ListBuilder<String>? entryRequirements) =>
      _$this._entryRequirements = entryRequirements;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  AirspaceRestrictionBuilder() {
    AirspaceRestriction._defaults(this);
  }

  AirspaceRestrictionBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restrictionId = $v.restrictionId;
      _restrictionType = $v.restrictionType;
      _affectedArea = $v.affectedArea.toBuilder();
      _effectivePeriod = $v.effectivePeriod.toBuilder();
      _altitudeLimits = $v.altitudeLimits?.toBuilder();
      _entryRequirements = $v.entryRequirements?.toBuilder();
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AirspaceRestriction other) {
    _$v = other as _$AirspaceRestriction;
  }

  @override
  void update(void Function(AirspaceRestrictionBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AirspaceRestriction build() => _build();

  _$AirspaceRestriction _build() {
    _$AirspaceRestriction _$result;
    try {
      _$result = _$v ??
          _$AirspaceRestriction._(
            restrictionId: BuiltValueNullFieldError.checkNotNull(
                restrictionId, r'AirspaceRestriction', 'restrictionId'),
            restrictionType: BuiltValueNullFieldError.checkNotNull(
                restrictionType, r'AirspaceRestriction', 'restrictionType'),
            affectedArea: affectedArea.build(),
            effectivePeriod: effectivePeriod.build(),
            altitudeLimits: _altitudeLimits?.build(),
            entryRequirements: _entryRequirements?.build(),
            description: description,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'affectedArea';
        affectedArea.build();
        _$failedField = 'effectivePeriod';
        effectivePeriod.build();
        _$failedField = 'altitudeLimits';
        _altitudeLimits?.build();
        _$failedField = 'entryRequirements';
        _entryRequirements?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AirspaceRestriction', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

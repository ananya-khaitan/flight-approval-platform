// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conflict_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ConflictResponseConflictTypeEnum
    _$conflictResponseConflictTypeEnum_temporalConflict =
    const ConflictResponseConflictTypeEnum._('temporalConflict');
const ConflictResponseConflictTypeEnum
    _$conflictResponseConflictTypeEnum_spatialConflict =
    const ConflictResponseConflictTypeEnum._('spatialConflict');
const ConflictResponseConflictTypeEnum
    _$conflictResponseConflictTypeEnum_priorityConflict =
    const ConflictResponseConflictTypeEnum._('priorityConflict');
const ConflictResponseConflictTypeEnum
    _$conflictResponseConflictTypeEnum_capacityLimit =
    const ConflictResponseConflictTypeEnum._('capacityLimit');

ConflictResponseConflictTypeEnum _$conflictResponseConflictTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'temporalConflict':
      return _$conflictResponseConflictTypeEnum_temporalConflict;
    case 'spatialConflict':
      return _$conflictResponseConflictTypeEnum_spatialConflict;
    case 'priorityConflict':
      return _$conflictResponseConflictTypeEnum_priorityConflict;
    case 'capacityLimit':
      return _$conflictResponseConflictTypeEnum_capacityLimit;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ConflictResponseConflictTypeEnum>
    _$conflictResponseConflictTypeEnumValues = BuiltSet<
        ConflictResponseConflictTypeEnum>(const <ConflictResponseConflictTypeEnum>[
  _$conflictResponseConflictTypeEnum_temporalConflict,
  _$conflictResponseConflictTypeEnum_spatialConflict,
  _$conflictResponseConflictTypeEnum_priorityConflict,
  _$conflictResponseConflictTypeEnum_capacityLimit,
]);

Serializer<ConflictResponseConflictTypeEnum>
    _$conflictResponseConflictTypeEnumSerializer =
    _$ConflictResponseConflictTypeEnumSerializer();

class _$ConflictResponseConflictTypeEnumSerializer
    implements PrimitiveSerializer<ConflictResponseConflictTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'temporalConflict': 'temporal_conflict',
    'spatialConflict': 'spatial_conflict',
    'priorityConflict': 'priority_conflict',
    'capacityLimit': 'capacity_limit',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'temporal_conflict': 'temporalConflict',
    'spatial_conflict': 'spatialConflict',
    'priority_conflict': 'priorityConflict',
    'capacity_limit': 'capacityLimit',
  };

  @override
  final Iterable<Type> types = const <Type>[ConflictResponseConflictTypeEnum];
  @override
  final String wireName = 'ConflictResponseConflictTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ConflictResponseConflictTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ConflictResponseConflictTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ConflictResponseConflictTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ConflictResponse extends ConflictResponse {
  @override
  final ConflictResponseConflictTypeEnum conflictType;
  @override
  final String message;
  @override
  final BuiltList<String>? conflictingAuthorizations;
  @override
  final BuiltList<AlternativeAuthorization>? suggestedAlternatives;

  factory _$ConflictResponse(
          [void Function(ConflictResponseBuilder)? updates]) =>
      (ConflictResponseBuilder()..update(updates))._build();

  _$ConflictResponse._(
      {required this.conflictType,
      required this.message,
      this.conflictingAuthorizations,
      this.suggestedAlternatives})
      : super._();
  @override
  ConflictResponse rebuild(void Function(ConflictResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ConflictResponseBuilder toBuilder() =>
      ConflictResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ConflictResponse &&
        conflictType == other.conflictType &&
        message == other.message &&
        conflictingAuthorizations == other.conflictingAuthorizations &&
        suggestedAlternatives == other.suggestedAlternatives;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, conflictType.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, conflictingAuthorizations.hashCode);
    _$hash = $jc(_$hash, suggestedAlternatives.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ConflictResponse')
          ..add('conflictType', conflictType)
          ..add('message', message)
          ..add('conflictingAuthorizations', conflictingAuthorizations)
          ..add('suggestedAlternatives', suggestedAlternatives))
        .toString();
  }
}

class ConflictResponseBuilder
    implements Builder<ConflictResponse, ConflictResponseBuilder> {
  _$ConflictResponse? _$v;

  ConflictResponseConflictTypeEnum? _conflictType;
  ConflictResponseConflictTypeEnum? get conflictType => _$this._conflictType;
  set conflictType(ConflictResponseConflictTypeEnum? conflictType) =>
      _$this._conflictType = conflictType;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<String>? _conflictingAuthorizations;
  ListBuilder<String> get conflictingAuthorizations =>
      _$this._conflictingAuthorizations ??= ListBuilder<String>();
  set conflictingAuthorizations(
          ListBuilder<String>? conflictingAuthorizations) =>
      _$this._conflictingAuthorizations = conflictingAuthorizations;

  ListBuilder<AlternativeAuthorization>? _suggestedAlternatives;
  ListBuilder<AlternativeAuthorization> get suggestedAlternatives =>
      _$this._suggestedAlternatives ??= ListBuilder<AlternativeAuthorization>();
  set suggestedAlternatives(
          ListBuilder<AlternativeAuthorization>? suggestedAlternatives) =>
      _$this._suggestedAlternatives = suggestedAlternatives;

  ConflictResponseBuilder() {
    ConflictResponse._defaults(this);
  }

  ConflictResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _conflictType = $v.conflictType;
      _message = $v.message;
      _conflictingAuthorizations = $v.conflictingAuthorizations?.toBuilder();
      _suggestedAlternatives = $v.suggestedAlternatives?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ConflictResponse other) {
    _$v = other as _$ConflictResponse;
  }

  @override
  void update(void Function(ConflictResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ConflictResponse build() => _build();

  _$ConflictResponse _build() {
    _$ConflictResponse _$result;
    try {
      _$result = _$v ??
          _$ConflictResponse._(
            conflictType: BuiltValueNullFieldError.checkNotNull(
                conflictType, r'ConflictResponse', 'conflictType'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'ConflictResponse', 'message'),
            conflictingAuthorizations: _conflictingAuthorizations?.build(),
            suggestedAlternatives: _suggestedAlternatives?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'conflictingAuthorizations';
        _conflictingAuthorizations?.build();
        _$failedField = 'suggestedAlternatives';
        _suggestedAlternatives?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ConflictResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

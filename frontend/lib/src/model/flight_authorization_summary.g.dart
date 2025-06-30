// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_authorization_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_pending =
    const FlightAuthorizationSummaryStatusEnum._('pending');
const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_accepted =
    const FlightAuthorizationSummaryStatusEnum._('accepted');
const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_rejected =
    const FlightAuthorizationSummaryStatusEnum._('rejected');
const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_activated =
    const FlightAuthorizationSummaryStatusEnum._('activated');
const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_ended =
    const FlightAuthorizationSummaryStatusEnum._('ended');
const FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnum_withdrawn =
    const FlightAuthorizationSummaryStatusEnum._('withdrawn');

FlightAuthorizationSummaryStatusEnum
    _$flightAuthorizationSummaryStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$flightAuthorizationSummaryStatusEnum_pending;
    case 'accepted':
      return _$flightAuthorizationSummaryStatusEnum_accepted;
    case 'rejected':
      return _$flightAuthorizationSummaryStatusEnum_rejected;
    case 'activated':
      return _$flightAuthorizationSummaryStatusEnum_activated;
    case 'ended':
      return _$flightAuthorizationSummaryStatusEnum_ended;
    case 'withdrawn':
      return _$flightAuthorizationSummaryStatusEnum_withdrawn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationSummaryStatusEnum>
    _$flightAuthorizationSummaryStatusEnumValues = BuiltSet<
        FlightAuthorizationSummaryStatusEnum>(const <FlightAuthorizationSummaryStatusEnum>[
  _$flightAuthorizationSummaryStatusEnum_pending,
  _$flightAuthorizationSummaryStatusEnum_accepted,
  _$flightAuthorizationSummaryStatusEnum_rejected,
  _$flightAuthorizationSummaryStatusEnum_activated,
  _$flightAuthorizationSummaryStatusEnum_ended,
  _$flightAuthorizationSummaryStatusEnum_withdrawn,
]);

const FlightAuthorizationSummaryFlightTypeEnum
    _$flightAuthorizationSummaryFlightTypeEnum_normal =
    const FlightAuthorizationSummaryFlightTypeEnum._('normal');
const FlightAuthorizationSummaryFlightTypeEnum
    _$flightAuthorizationSummaryFlightTypeEnum_specialOperations =
    const FlightAuthorizationSummaryFlightTypeEnum._('specialOperations');

FlightAuthorizationSummaryFlightTypeEnum
    _$flightAuthorizationSummaryFlightTypeEnumValueOf(String name) {
  switch (name) {
    case 'normal':
      return _$flightAuthorizationSummaryFlightTypeEnum_normal;
    case 'specialOperations':
      return _$flightAuthorizationSummaryFlightTypeEnum_specialOperations;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationSummaryFlightTypeEnum>
    _$flightAuthorizationSummaryFlightTypeEnumValues = BuiltSet<
        FlightAuthorizationSummaryFlightTypeEnum>(const <FlightAuthorizationSummaryFlightTypeEnum>[
  _$flightAuthorizationSummaryFlightTypeEnum_normal,
  _$flightAuthorizationSummaryFlightTypeEnum_specialOperations,
]);

Serializer<FlightAuthorizationSummaryStatusEnum>
    _$flightAuthorizationSummaryStatusEnumSerializer =
    _$FlightAuthorizationSummaryStatusEnumSerializer();
Serializer<FlightAuthorizationSummaryFlightTypeEnum>
    _$flightAuthorizationSummaryFlightTypeEnumSerializer =
    _$FlightAuthorizationSummaryFlightTypeEnumSerializer();

class _$FlightAuthorizationSummaryStatusEnumSerializer
    implements PrimitiveSerializer<FlightAuthorizationSummaryStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'activated': 'activated',
    'ended': 'ended',
    'withdrawn': 'withdrawn',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'accepted': 'accepted',
    'rejected': 'rejected',
    'activated': 'activated',
    'ended': 'ended',
    'withdrawn': 'withdrawn',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationSummaryStatusEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationSummaryStatusEnum';

  @override
  Object serialize(
          Serializers serializers, FlightAuthorizationSummaryStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationSummaryStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationSummaryStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationSummaryFlightTypeEnumSerializer
    implements PrimitiveSerializer<FlightAuthorizationSummaryFlightTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'specialOperations': 'special_operations',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'special_operations': 'specialOperations',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationSummaryFlightTypeEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationSummaryFlightTypeEnum';

  @override
  Object serialize(Serializers serializers,
          FlightAuthorizationSummaryFlightTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationSummaryFlightTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationSummaryFlightTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationSummary extends FlightAuthorizationSummary {
  @override
  final String? authorizationId;
  @override
  final FlightAuthorizationSummaryStatusEnum? status;
  @override
  final DateTime? plannedStartTime;
  @override
  final DateTime? plannedEndTime;
  @override
  final FlightAuthorizationSummaryFlightTypeEnum? flightType;
  @override
  final String? uasRegistrationNumber;

  factory _$FlightAuthorizationSummary(
          [void Function(FlightAuthorizationSummaryBuilder)? updates]) =>
      (FlightAuthorizationSummaryBuilder()..update(updates))._build();

  _$FlightAuthorizationSummary._(
      {this.authorizationId,
      this.status,
      this.plannedStartTime,
      this.plannedEndTime,
      this.flightType,
      this.uasRegistrationNumber})
      : super._();
  @override
  FlightAuthorizationSummary rebuild(
          void Function(FlightAuthorizationSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightAuthorizationSummaryBuilder toBuilder() =>
      FlightAuthorizationSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightAuthorizationSummary &&
        authorizationId == other.authorizationId &&
        status == other.status &&
        plannedStartTime == other.plannedStartTime &&
        plannedEndTime == other.plannedEndTime &&
        flightType == other.flightType &&
        uasRegistrationNumber == other.uasRegistrationNumber;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, plannedStartTime.hashCode);
    _$hash = $jc(_$hash, plannedEndTime.hashCode);
    _$hash = $jc(_$hash, flightType.hashCode);
    _$hash = $jc(_$hash, uasRegistrationNumber.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlightAuthorizationSummary')
          ..add('authorizationId', authorizationId)
          ..add('status', status)
          ..add('plannedStartTime', plannedStartTime)
          ..add('plannedEndTime', plannedEndTime)
          ..add('flightType', flightType)
          ..add('uasRegistrationNumber', uasRegistrationNumber))
        .toString();
  }
}

class FlightAuthorizationSummaryBuilder
    implements
        Builder<FlightAuthorizationSummary, FlightAuthorizationSummaryBuilder> {
  _$FlightAuthorizationSummary? _$v;

  String? _authorizationId;
  String? get authorizationId => _$this._authorizationId;
  set authorizationId(String? authorizationId) =>
      _$this._authorizationId = authorizationId;

  FlightAuthorizationSummaryStatusEnum? _status;
  FlightAuthorizationSummaryStatusEnum? get status => _$this._status;
  set status(FlightAuthorizationSummaryStatusEnum? status) =>
      _$this._status = status;

  DateTime? _plannedStartTime;
  DateTime? get plannedStartTime => _$this._plannedStartTime;
  set plannedStartTime(DateTime? plannedStartTime) =>
      _$this._plannedStartTime = plannedStartTime;

  DateTime? _plannedEndTime;
  DateTime? get plannedEndTime => _$this._plannedEndTime;
  set plannedEndTime(DateTime? plannedEndTime) =>
      _$this._plannedEndTime = plannedEndTime;

  FlightAuthorizationSummaryFlightTypeEnum? _flightType;
  FlightAuthorizationSummaryFlightTypeEnum? get flightType =>
      _$this._flightType;
  set flightType(FlightAuthorizationSummaryFlightTypeEnum? flightType) =>
      _$this._flightType = flightType;

  String? _uasRegistrationNumber;
  String? get uasRegistrationNumber => _$this._uasRegistrationNumber;
  set uasRegistrationNumber(String? uasRegistrationNumber) =>
      _$this._uasRegistrationNumber = uasRegistrationNumber;

  FlightAuthorizationSummaryBuilder() {
    FlightAuthorizationSummary._defaults(this);
  }

  FlightAuthorizationSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizationId = $v.authorizationId;
      _status = $v.status;
      _plannedStartTime = $v.plannedStartTime;
      _plannedEndTime = $v.plannedEndTime;
      _flightType = $v.flightType;
      _uasRegistrationNumber = $v.uasRegistrationNumber;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightAuthorizationSummary other) {
    _$v = other as _$FlightAuthorizationSummary;
  }

  @override
  void update(void Function(FlightAuthorizationSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightAuthorizationSummary build() => _build();

  _$FlightAuthorizationSummary _build() {
    final _$result = _$v ??
        _$FlightAuthorizationSummary._(
          authorizationId: authorizationId,
          status: status,
          plannedStartTime: plannedStartTime,
          plannedEndTime: plannedEndTime,
          flightType: flightType,
          uasRegistrationNumber: uasRegistrationNumber,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

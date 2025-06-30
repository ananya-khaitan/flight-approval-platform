// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activation_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivationResponseActivationStatusEnum
    _$activationResponseActivationStatusEnum_activated =
    const ActivationResponseActivationStatusEnum._('activated');
const ActivationResponseActivationStatusEnum
    _$activationResponseActivationStatusEnum_rejected =
    const ActivationResponseActivationStatusEnum._('rejected');

ActivationResponseActivationStatusEnum
    _$activationResponseActivationStatusEnumValueOf(String name) {
  switch (name) {
    case 'activated':
      return _$activationResponseActivationStatusEnum_activated;
    case 'rejected':
      return _$activationResponseActivationStatusEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivationResponseActivationStatusEnum>
    _$activationResponseActivationStatusEnumValues = BuiltSet<
        ActivationResponseActivationStatusEnum>(const <ActivationResponseActivationStatusEnum>[
  _$activationResponseActivationStatusEnum_activated,
  _$activationResponseActivationStatusEnum_rejected,
]);

Serializer<ActivationResponseActivationStatusEnum>
    _$activationResponseActivationStatusEnumSerializer =
    _$ActivationResponseActivationStatusEnumSerializer();

class _$ActivationResponseActivationStatusEnumSerializer
    implements PrimitiveSerializer<ActivationResponseActivationStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'activated': 'activated',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'activated': 'activated',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ActivationResponseActivationStatusEnum
  ];
  @override
  final String wireName = 'ActivationResponseActivationStatusEnum';

  @override
  Object serialize(Serializers serializers,
          ActivationResponseActivationStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivationResponseActivationStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivationResponseActivationStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivationResponse extends ActivationResponse {
  @override
  final ActivationResponseActivationStatusEnum activationStatus;
  @override
  final DateTime activationTime;
  @override
  final String? rejectionReason;
  @override
  final bool? trafficInformationAvailable;
  @override
  final bool? conformanceMonitoringActive;

  factory _$ActivationResponse(
          [void Function(ActivationResponseBuilder)? updates]) =>
      (ActivationResponseBuilder()..update(updates))._build();

  _$ActivationResponse._(
      {required this.activationStatus,
      required this.activationTime,
      this.rejectionReason,
      this.trafficInformationAvailable,
      this.conformanceMonitoringActive})
      : super._();
  @override
  ActivationResponse rebuild(
          void Function(ActivationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivationResponseBuilder toBuilder() =>
      ActivationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivationResponse &&
        activationStatus == other.activationStatus &&
        activationTime == other.activationTime &&
        rejectionReason == other.rejectionReason &&
        trafficInformationAvailable == other.trafficInformationAvailable &&
        conformanceMonitoringActive == other.conformanceMonitoringActive;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, activationStatus.hashCode);
    _$hash = $jc(_$hash, activationTime.hashCode);
    _$hash = $jc(_$hash, rejectionReason.hashCode);
    _$hash = $jc(_$hash, trafficInformationAvailable.hashCode);
    _$hash = $jc(_$hash, conformanceMonitoringActive.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivationResponse')
          ..add('activationStatus', activationStatus)
          ..add('activationTime', activationTime)
          ..add('rejectionReason', rejectionReason)
          ..add('trafficInformationAvailable', trafficInformationAvailable)
          ..add('conformanceMonitoringActive', conformanceMonitoringActive))
        .toString();
  }
}

class ActivationResponseBuilder
    implements Builder<ActivationResponse, ActivationResponseBuilder> {
  _$ActivationResponse? _$v;

  ActivationResponseActivationStatusEnum? _activationStatus;
  ActivationResponseActivationStatusEnum? get activationStatus =>
      _$this._activationStatus;
  set activationStatus(
          ActivationResponseActivationStatusEnum? activationStatus) =>
      _$this._activationStatus = activationStatus;

  DateTime? _activationTime;
  DateTime? get activationTime => _$this._activationTime;
  set activationTime(DateTime? activationTime) =>
      _$this._activationTime = activationTime;

  String? _rejectionReason;
  String? get rejectionReason => _$this._rejectionReason;
  set rejectionReason(String? rejectionReason) =>
      _$this._rejectionReason = rejectionReason;

  bool? _trafficInformationAvailable;
  bool? get trafficInformationAvailable => _$this._trafficInformationAvailable;
  set trafficInformationAvailable(bool? trafficInformationAvailable) =>
      _$this._trafficInformationAvailable = trafficInformationAvailable;

  bool? _conformanceMonitoringActive;
  bool? get conformanceMonitoringActive => _$this._conformanceMonitoringActive;
  set conformanceMonitoringActive(bool? conformanceMonitoringActive) =>
      _$this._conformanceMonitoringActive = conformanceMonitoringActive;

  ActivationResponseBuilder() {
    ActivationResponse._defaults(this);
  }

  ActivationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _activationStatus = $v.activationStatus;
      _activationTime = $v.activationTime;
      _rejectionReason = $v.rejectionReason;
      _trafficInformationAvailable = $v.trafficInformationAvailable;
      _conformanceMonitoringActive = $v.conformanceMonitoringActive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivationResponse other) {
    _$v = other as _$ActivationResponse;
  }

  @override
  void update(void Function(ActivationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivationResponse build() => _build();

  _$ActivationResponse _build() {
    final _$result = _$v ??
        _$ActivationResponse._(
          activationStatus: BuiltValueNullFieldError.checkNotNull(
              activationStatus, r'ActivationResponse', 'activationStatus'),
          activationTime: BuiltValueNullFieldError.checkNotNull(
              activationTime, r'ActivationResponse', 'activationTime'),
          rejectionReason: rejectionReason,
          trafficInformationAvailable: trafficInformationAvailable,
          conformanceMonitoringActive: conformanceMonitoringActive,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

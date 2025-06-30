// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'withdraw_flight_authorization_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const WithdrawFlightAuthorizationRequestReasonEnum
    _$withdrawFlightAuthorizationRequestReasonEnum_operatorRequest =
    const WithdrawFlightAuthorizationRequestReasonEnum._('operatorRequest');
const WithdrawFlightAuthorizationRequestReasonEnum
    _$withdrawFlightAuthorizationRequestReasonEnum_conflictDetected =
    const WithdrawFlightAuthorizationRequestReasonEnum._('conflictDetected');
const WithdrawFlightAuthorizationRequestReasonEnum
    _$withdrawFlightAuthorizationRequestReasonEnum_emergencyAircraft =
    const WithdrawFlightAuthorizationRequestReasonEnum._('emergencyAircraft');
const WithdrawFlightAuthorizationRequestReasonEnum
    _$withdrawFlightAuthorizationRequestReasonEnum_dynamicRestriction =
    const WithdrawFlightAuthorizationRequestReasonEnum._('dynamicRestriction');

WithdrawFlightAuthorizationRequestReasonEnum
    _$withdrawFlightAuthorizationRequestReasonEnumValueOf(String name) {
  switch (name) {
    case 'operatorRequest':
      return _$withdrawFlightAuthorizationRequestReasonEnum_operatorRequest;
    case 'conflictDetected':
      return _$withdrawFlightAuthorizationRequestReasonEnum_conflictDetected;
    case 'emergencyAircraft':
      return _$withdrawFlightAuthorizationRequestReasonEnum_emergencyAircraft;
    case 'dynamicRestriction':
      return _$withdrawFlightAuthorizationRequestReasonEnum_dynamicRestriction;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<WithdrawFlightAuthorizationRequestReasonEnum>
    _$withdrawFlightAuthorizationRequestReasonEnumValues = BuiltSet<
        WithdrawFlightAuthorizationRequestReasonEnum>(const <WithdrawFlightAuthorizationRequestReasonEnum>[
  _$withdrawFlightAuthorizationRequestReasonEnum_operatorRequest,
  _$withdrawFlightAuthorizationRequestReasonEnum_conflictDetected,
  _$withdrawFlightAuthorizationRequestReasonEnum_emergencyAircraft,
  _$withdrawFlightAuthorizationRequestReasonEnum_dynamicRestriction,
]);

Serializer<WithdrawFlightAuthorizationRequestReasonEnum>
    _$withdrawFlightAuthorizationRequestReasonEnumSerializer =
    _$WithdrawFlightAuthorizationRequestReasonEnumSerializer();

class _$WithdrawFlightAuthorizationRequestReasonEnumSerializer
    implements
        PrimitiveSerializer<WithdrawFlightAuthorizationRequestReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'operatorRequest': 'operator_request',
    'conflictDetected': 'conflict_detected',
    'emergencyAircraft': 'emergency_aircraft',
    'dynamicRestriction': 'dynamic_restriction',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'operator_request': 'operatorRequest',
    'conflict_detected': 'conflictDetected',
    'emergency_aircraft': 'emergencyAircraft',
    'dynamic_restriction': 'dynamicRestriction',
  };

  @override
  final Iterable<Type> types = const <Type>[
    WithdrawFlightAuthorizationRequestReasonEnum
  ];
  @override
  final String wireName = 'WithdrawFlightAuthorizationRequestReasonEnum';

  @override
  Object serialize(Serializers serializers,
          WithdrawFlightAuthorizationRequestReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  WithdrawFlightAuthorizationRequestReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      WithdrawFlightAuthorizationRequestReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$WithdrawFlightAuthorizationRequest
    extends WithdrawFlightAuthorizationRequest {
  @override
  final WithdrawFlightAuthorizationRequestReasonEnum? reason;

  factory _$WithdrawFlightAuthorizationRequest(
          [void Function(WithdrawFlightAuthorizationRequestBuilder)?
              updates]) =>
      (WithdrawFlightAuthorizationRequestBuilder()..update(updates))._build();

  _$WithdrawFlightAuthorizationRequest._({this.reason}) : super._();
  @override
  WithdrawFlightAuthorizationRequest rebuild(
          void Function(WithdrawFlightAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WithdrawFlightAuthorizationRequestBuilder toBuilder() =>
      WithdrawFlightAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WithdrawFlightAuthorizationRequest &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WithdrawFlightAuthorizationRequest')
          ..add('reason', reason))
        .toString();
  }
}

class WithdrawFlightAuthorizationRequestBuilder
    implements
        Builder<WithdrawFlightAuthorizationRequest,
            WithdrawFlightAuthorizationRequestBuilder> {
  _$WithdrawFlightAuthorizationRequest? _$v;

  WithdrawFlightAuthorizationRequestReasonEnum? _reason;
  WithdrawFlightAuthorizationRequestReasonEnum? get reason => _$this._reason;
  set reason(WithdrawFlightAuthorizationRequestReasonEnum? reason) =>
      _$this._reason = reason;

  WithdrawFlightAuthorizationRequestBuilder() {
    WithdrawFlightAuthorizationRequest._defaults(this);
  }

  WithdrawFlightAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WithdrawFlightAuthorizationRequest other) {
    _$v = other as _$WithdrawFlightAuthorizationRequest;
  }

  @override
  void update(
      void Function(WithdrawFlightAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WithdrawFlightAuthorizationRequest build() => _build();

  _$WithdrawFlightAuthorizationRequest _build() {
    final _$result = _$v ??
        _$WithdrawFlightAuthorizationRequest._(
          reason: reason,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

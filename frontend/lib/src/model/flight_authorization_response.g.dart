// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_authorization_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlightAuthorizationResponseStatusEnum
    _$flightAuthorizationResponseStatusEnum_accepted =
    const FlightAuthorizationResponseStatusEnum._('accepted');
const FlightAuthorizationResponseStatusEnum
    _$flightAuthorizationResponseStatusEnum_rejected =
    const FlightAuthorizationResponseStatusEnum._('rejected');

FlightAuthorizationResponseStatusEnum
    _$flightAuthorizationResponseStatusEnumValueOf(String name) {
  switch (name) {
    case 'accepted':
      return _$flightAuthorizationResponseStatusEnum_accepted;
    case 'rejected':
      return _$flightAuthorizationResponseStatusEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationResponseStatusEnum>
    _$flightAuthorizationResponseStatusEnumValues = BuiltSet<
        FlightAuthorizationResponseStatusEnum>(const <FlightAuthorizationResponseStatusEnum>[
  _$flightAuthorizationResponseStatusEnum_accepted,
  _$flightAuthorizationResponseStatusEnum_rejected,
]);

Serializer<FlightAuthorizationResponseStatusEnum>
    _$flightAuthorizationResponseStatusEnumSerializer =
    _$FlightAuthorizationResponseStatusEnumSerializer();

class _$FlightAuthorizationResponseStatusEnumSerializer
    implements PrimitiveSerializer<FlightAuthorizationResponseStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'accepted': 'accepted',
    'rejected': 'rejected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'accepted': 'accepted',
    'rejected': 'rejected',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationResponseStatusEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationResponseStatusEnum';

  @override
  Object serialize(
          Serializers serializers, FlightAuthorizationResponseStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationResponseStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationResponseStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

abstract mixin class FlightAuthorizationResponseBuilder {
  void replace(FlightAuthorizationResponse other);
  void update(void Function(FlightAuthorizationResponseBuilder) updates);
  String? get authorizationId;
  set authorizationId(String? authorizationId);

  FlightAuthorizationResponseStatusEnum? get status;
  set status(FlightAuthorizationResponseStatusEnum? status);

  DateTime? get requestTime;
  set requestTime(DateTime? requestTime);

  DateTime? get responseTime;
  set responseTime(DateTime? responseTime);

  ListBuilder<String> get termsAndConditions;
  set termsAndConditions(ListBuilder<String>? termsAndConditions);

  DeviationThresholdsBuilder get deviationThresholds;
  set deviationThresholds(DeviationThresholdsBuilder? deviationThresholds);

  AlternativeAuthorizationBuilder get alternativeAuthorization;
  set alternativeAuthorization(
      AlternativeAuthorizationBuilder? alternativeAuthorization);

  ListBuilder<String> get rejectionReasons;
  set rejectionReasons(ListBuilder<String>? rejectionReasons);
}

class _$$FlightAuthorizationResponse extends $FlightAuthorizationResponse {
  @override
  final String authorizationId;
  @override
  final FlightAuthorizationResponseStatusEnum status;
  @override
  final DateTime requestTime;
  @override
  final DateTime responseTime;
  @override
  final BuiltList<String>? termsAndConditions;
  @override
  final DeviationThresholds? deviationThresholds;
  @override
  final AlternativeAuthorization? alternativeAuthorization;
  @override
  final BuiltList<String>? rejectionReasons;

  factory _$$FlightAuthorizationResponse(
          [void Function($FlightAuthorizationResponseBuilder)? updates]) =>
      ($FlightAuthorizationResponseBuilder()..update(updates))._build();

  _$$FlightAuthorizationResponse._(
      {required this.authorizationId,
      required this.status,
      required this.requestTime,
      required this.responseTime,
      this.termsAndConditions,
      this.deviationThresholds,
      this.alternativeAuthorization,
      this.rejectionReasons})
      : super._();
  @override
  $FlightAuthorizationResponse rebuild(
          void Function($FlightAuthorizationResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  $FlightAuthorizationResponseBuilder toBuilder() =>
      $FlightAuthorizationResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is $FlightAuthorizationResponse &&
        authorizationId == other.authorizationId &&
        status == other.status &&
        requestTime == other.requestTime &&
        responseTime == other.responseTime &&
        termsAndConditions == other.termsAndConditions &&
        deviationThresholds == other.deviationThresholds &&
        alternativeAuthorization == other.alternativeAuthorization &&
        rejectionReasons == other.rejectionReasons;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizationId.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, requestTime.hashCode);
    _$hash = $jc(_$hash, responseTime.hashCode);
    _$hash = $jc(_$hash, termsAndConditions.hashCode);
    _$hash = $jc(_$hash, deviationThresholds.hashCode);
    _$hash = $jc(_$hash, alternativeAuthorization.hashCode);
    _$hash = $jc(_$hash, rejectionReasons.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'$FlightAuthorizationResponse')
          ..add('authorizationId', authorizationId)
          ..add('status', status)
          ..add('requestTime', requestTime)
          ..add('responseTime', responseTime)
          ..add('termsAndConditions', termsAndConditions)
          ..add('deviationThresholds', deviationThresholds)
          ..add('alternativeAuthorization', alternativeAuthorization)
          ..add('rejectionReasons', rejectionReasons))
        .toString();
  }
}

class $FlightAuthorizationResponseBuilder
    implements
        Builder<$FlightAuthorizationResponse,
            $FlightAuthorizationResponseBuilder>,
        FlightAuthorizationResponseBuilder {
  _$$FlightAuthorizationResponse? _$v;

  String? _authorizationId;
  String? get authorizationId => _$this._authorizationId;
  set authorizationId(covariant String? authorizationId) =>
      _$this._authorizationId = authorizationId;

  FlightAuthorizationResponseStatusEnum? _status;
  FlightAuthorizationResponseStatusEnum? get status => _$this._status;
  set status(covariant FlightAuthorizationResponseStatusEnum? status) =>
      _$this._status = status;

  DateTime? _requestTime;
  DateTime? get requestTime => _$this._requestTime;
  set requestTime(covariant DateTime? requestTime) =>
      _$this._requestTime = requestTime;

  DateTime? _responseTime;
  DateTime? get responseTime => _$this._responseTime;
  set responseTime(covariant DateTime? responseTime) =>
      _$this._responseTime = responseTime;

  ListBuilder<String>? _termsAndConditions;
  ListBuilder<String> get termsAndConditions =>
      _$this._termsAndConditions ??= ListBuilder<String>();
  set termsAndConditions(covariant ListBuilder<String>? termsAndConditions) =>
      _$this._termsAndConditions = termsAndConditions;

  DeviationThresholdsBuilder? _deviationThresholds;
  DeviationThresholdsBuilder get deviationThresholds =>
      _$this._deviationThresholds ??= DeviationThresholdsBuilder();
  set deviationThresholds(
          covariant DeviationThresholdsBuilder? deviationThresholds) =>
      _$this._deviationThresholds = deviationThresholds;

  AlternativeAuthorizationBuilder? _alternativeAuthorization;
  AlternativeAuthorizationBuilder get alternativeAuthorization =>
      _$this._alternativeAuthorization ??= AlternativeAuthorizationBuilder();
  set alternativeAuthorization(
          covariant AlternativeAuthorizationBuilder?
              alternativeAuthorization) =>
      _$this._alternativeAuthorization = alternativeAuthorization;

  ListBuilder<String>? _rejectionReasons;
  ListBuilder<String> get rejectionReasons =>
      _$this._rejectionReasons ??= ListBuilder<String>();
  set rejectionReasons(covariant ListBuilder<String>? rejectionReasons) =>
      _$this._rejectionReasons = rejectionReasons;

  $FlightAuthorizationResponseBuilder() {
    $FlightAuthorizationResponse._defaults(this);
  }

  $FlightAuthorizationResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizationId = $v.authorizationId;
      _status = $v.status;
      _requestTime = $v.requestTime;
      _responseTime = $v.responseTime;
      _termsAndConditions = $v.termsAndConditions?.toBuilder();
      _deviationThresholds = $v.deviationThresholds?.toBuilder();
      _alternativeAuthorization = $v.alternativeAuthorization?.toBuilder();
      _rejectionReasons = $v.rejectionReasons?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(covariant $FlightAuthorizationResponse other) {
    _$v = other as _$$FlightAuthorizationResponse;
  }

  @override
  void update(void Function($FlightAuthorizationResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  $FlightAuthorizationResponse build() => _build();

  _$$FlightAuthorizationResponse _build() {
    _$$FlightAuthorizationResponse _$result;
    try {
      _$result = _$v ??
          _$$FlightAuthorizationResponse._(
            authorizationId: BuiltValueNullFieldError.checkNotNull(
                authorizationId,
                r'$FlightAuthorizationResponse',
                'authorizationId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'$FlightAuthorizationResponse', 'status'),
            requestTime: BuiltValueNullFieldError.checkNotNull(
                requestTime, r'$FlightAuthorizationResponse', 'requestTime'),
            responseTime: BuiltValueNullFieldError.checkNotNull(
                responseTime, r'$FlightAuthorizationResponse', 'responseTime'),
            termsAndConditions: _termsAndConditions?.build(),
            deviationThresholds: _deviationThresholds?.build(),
            alternativeAuthorization: _alternativeAuthorization?.build(),
            rejectionReasons: _rejectionReasons?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'termsAndConditions';
        _termsAndConditions?.build();
        _$failedField = 'deviationThresholds';
        _deviationThresholds?.build();
        _$failedField = 'alternativeAuthorization';
        _alternativeAuthorization?.build();
        _$failedField = 'rejectionReasons';
        _rejectionReasons?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'$FlightAuthorizationResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

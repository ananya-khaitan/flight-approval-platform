// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_authorization_details.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlightAuthorizationDetailsStatusEnum
    _$flightAuthorizationDetailsStatusEnum_accepted =
    const FlightAuthorizationDetailsStatusEnum._('accepted');
const FlightAuthorizationDetailsStatusEnum
    _$flightAuthorizationDetailsStatusEnum_rejected =
    const FlightAuthorizationDetailsStatusEnum._('rejected');

FlightAuthorizationDetailsStatusEnum
    _$flightAuthorizationDetailsStatusEnumValueOf(String name) {
  switch (name) {
    case 'accepted':
      return _$flightAuthorizationDetailsStatusEnum_accepted;
    case 'rejected':
      return _$flightAuthorizationDetailsStatusEnum_rejected;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationDetailsStatusEnum>
    _$flightAuthorizationDetailsStatusEnumValues = BuiltSet<
        FlightAuthorizationDetailsStatusEnum>(const <FlightAuthorizationDetailsStatusEnum>[
  _$flightAuthorizationDetailsStatusEnum_accepted,
  _$flightAuthorizationDetailsStatusEnum_rejected,
]);

const FlightAuthorizationDetailsCurrentStatusEnum
    _$flightAuthorizationDetailsCurrentStatusEnum_accepted =
    const FlightAuthorizationDetailsCurrentStatusEnum._('accepted');
const FlightAuthorizationDetailsCurrentStatusEnum
    _$flightAuthorizationDetailsCurrentStatusEnum_activated =
    const FlightAuthorizationDetailsCurrentStatusEnum._('activated');
const FlightAuthorizationDetailsCurrentStatusEnum
    _$flightAuthorizationDetailsCurrentStatusEnum_ended =
    const FlightAuthorizationDetailsCurrentStatusEnum._('ended');
const FlightAuthorizationDetailsCurrentStatusEnum
    _$flightAuthorizationDetailsCurrentStatusEnum_withdrawn =
    const FlightAuthorizationDetailsCurrentStatusEnum._('withdrawn');

FlightAuthorizationDetailsCurrentStatusEnum
    _$flightAuthorizationDetailsCurrentStatusEnumValueOf(String name) {
  switch (name) {
    case 'accepted':
      return _$flightAuthorizationDetailsCurrentStatusEnum_accepted;
    case 'activated':
      return _$flightAuthorizationDetailsCurrentStatusEnum_activated;
    case 'ended':
      return _$flightAuthorizationDetailsCurrentStatusEnum_ended;
    case 'withdrawn':
      return _$flightAuthorizationDetailsCurrentStatusEnum_withdrawn;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationDetailsCurrentStatusEnum>
    _$flightAuthorizationDetailsCurrentStatusEnumValues = BuiltSet<
        FlightAuthorizationDetailsCurrentStatusEnum>(const <FlightAuthorizationDetailsCurrentStatusEnum>[
  _$flightAuthorizationDetailsCurrentStatusEnum_accepted,
  _$flightAuthorizationDetailsCurrentStatusEnum_activated,
  _$flightAuthorizationDetailsCurrentStatusEnum_ended,
  _$flightAuthorizationDetailsCurrentStatusEnum_withdrawn,
]);

Serializer<FlightAuthorizationDetailsStatusEnum>
    _$flightAuthorizationDetailsStatusEnumSerializer =
    _$FlightAuthorizationDetailsStatusEnumSerializer();
Serializer<FlightAuthorizationDetailsCurrentStatusEnum>
    _$flightAuthorizationDetailsCurrentStatusEnumSerializer =
    _$FlightAuthorizationDetailsCurrentStatusEnumSerializer();

class _$FlightAuthorizationDetailsStatusEnumSerializer
    implements PrimitiveSerializer<FlightAuthorizationDetailsStatusEnum> {
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
    FlightAuthorizationDetailsStatusEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationDetailsStatusEnum';

  @override
  Object serialize(
          Serializers serializers, FlightAuthorizationDetailsStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationDetailsStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationDetailsStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationDetailsCurrentStatusEnumSerializer
    implements
        PrimitiveSerializer<FlightAuthorizationDetailsCurrentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'accepted': 'accepted',
    'activated': 'activated',
    'ended': 'ended',
    'withdrawn': 'withdrawn',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'accepted': 'accepted',
    'activated': 'activated',
    'ended': 'ended',
    'withdrawn': 'withdrawn',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationDetailsCurrentStatusEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationDetailsCurrentStatusEnum';

  @override
  Object serialize(Serializers serializers,
          FlightAuthorizationDetailsCurrentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationDetailsCurrentStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationDetailsCurrentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationDetails extends FlightAuthorizationDetails {
  @override
  final FlightAuthorizationRequest? originalRequest;
  @override
  final DateTime? lastUpdated;
  @override
  final FlightAuthorizationDetailsCurrentStatusEnum? currentStatus;
  @override
  final DateTime? endTime;
  @override
  final DateTime? activationTime;
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

  factory _$FlightAuthorizationDetails(
          [void Function(FlightAuthorizationDetailsBuilder)? updates]) =>
      (FlightAuthorizationDetailsBuilder()..update(updates))._build();

  _$FlightAuthorizationDetails._(
      {this.originalRequest,
      this.lastUpdated,
      this.currentStatus,
      this.endTime,
      this.activationTime,
      required this.authorizationId,
      required this.status,
      required this.requestTime,
      required this.responseTime,
      this.termsAndConditions,
      this.deviationThresholds,
      this.alternativeAuthorization,
      this.rejectionReasons})
      : super._();
  @override
  FlightAuthorizationDetails rebuild(
          void Function(FlightAuthorizationDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightAuthorizationDetailsBuilder toBuilder() =>
      FlightAuthorizationDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightAuthorizationDetails &&
        originalRequest == other.originalRequest &&
        lastUpdated == other.lastUpdated &&
        currentStatus == other.currentStatus &&
        endTime == other.endTime &&
        activationTime == other.activationTime &&
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
    _$hash = $jc(_$hash, originalRequest.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jc(_$hash, currentStatus.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jc(_$hash, activationTime.hashCode);
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
    return (newBuiltValueToStringHelper(r'FlightAuthorizationDetails')
          ..add('originalRequest', originalRequest)
          ..add('lastUpdated', lastUpdated)
          ..add('currentStatus', currentStatus)
          ..add('endTime', endTime)
          ..add('activationTime', activationTime)
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

class FlightAuthorizationDetailsBuilder
    implements
        Builder<FlightAuthorizationDetails, FlightAuthorizationDetailsBuilder>,
        FlightAuthorizationResponseBuilder {
  _$FlightAuthorizationDetails? _$v;

  FlightAuthorizationRequestBuilder? _originalRequest;
  FlightAuthorizationRequestBuilder get originalRequest =>
      _$this._originalRequest ??= FlightAuthorizationRequestBuilder();
  set originalRequest(
          covariant FlightAuthorizationRequestBuilder? originalRequest) =>
      _$this._originalRequest = originalRequest;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(covariant DateTime? lastUpdated) =>
      _$this._lastUpdated = lastUpdated;

  FlightAuthorizationDetailsCurrentStatusEnum? _currentStatus;
  FlightAuthorizationDetailsCurrentStatusEnum? get currentStatus =>
      _$this._currentStatus;
  set currentStatus(
          covariant FlightAuthorizationDetailsCurrentStatusEnum?
              currentStatus) =>
      _$this._currentStatus = currentStatus;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(covariant DateTime? endTime) => _$this._endTime = endTime;

  DateTime? _activationTime;
  DateTime? get activationTime => _$this._activationTime;
  set activationTime(covariant DateTime? activationTime) =>
      _$this._activationTime = activationTime;

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

  FlightAuthorizationDetailsBuilder() {
    FlightAuthorizationDetails._defaults(this);
  }

  FlightAuthorizationDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _originalRequest = $v.originalRequest?.toBuilder();
      _lastUpdated = $v.lastUpdated;
      _currentStatus = $v.currentStatus;
      _endTime = $v.endTime;
      _activationTime = $v.activationTime;
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
  void replace(covariant FlightAuthorizationDetails other) {
    _$v = other as _$FlightAuthorizationDetails;
  }

  @override
  void update(void Function(FlightAuthorizationDetailsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightAuthorizationDetails build() => _build();

  _$FlightAuthorizationDetails _build() {
    _$FlightAuthorizationDetails _$result;
    try {
      _$result = _$v ??
          _$FlightAuthorizationDetails._(
            originalRequest: _originalRequest?.build(),
            lastUpdated: lastUpdated,
            currentStatus: currentStatus,
            endTime: endTime,
            activationTime: activationTime,
            authorizationId: BuiltValueNullFieldError.checkNotNull(
                authorizationId,
                r'FlightAuthorizationDetails',
                'authorizationId'),
            status: BuiltValueNullFieldError.checkNotNull(
                status, r'FlightAuthorizationDetails', 'status'),
            requestTime: BuiltValueNullFieldError.checkNotNull(
                requestTime, r'FlightAuthorizationDetails', 'requestTime'),
            responseTime: BuiltValueNullFieldError.checkNotNull(
                responseTime, r'FlightAuthorizationDetails', 'responseTime'),
            termsAndConditions: _termsAndConditions?.build(),
            deviationThresholds: _deviationThresholds?.build(),
            alternativeAuthorization: _alternativeAuthorization?.build(),
            rejectionReasons: _rejectionReasons?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'originalRequest';
        _originalRequest?.build();

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
            r'FlightAuthorizationDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

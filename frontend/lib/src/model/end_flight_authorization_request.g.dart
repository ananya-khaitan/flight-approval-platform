// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_flight_authorization_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EndFlightAuthorizationRequestEndReasonEnum
    _$endFlightAuthorizationRequestEndReasonEnum_normalCompletion =
    const EndFlightAuthorizationRequestEndReasonEnum._('normalCompletion');
const EndFlightAuthorizationRequestEndReasonEnum
    _$endFlightAuthorizationRequestEndReasonEnum_emergencyLanding =
    const EndFlightAuthorizationRequestEndReasonEnum._('emergencyLanding');
const EndFlightAuthorizationRequestEndReasonEnum
    _$endFlightAuthorizationRequestEndReasonEnum_technicalIssue =
    const EndFlightAuthorizationRequestEndReasonEnum._('technicalIssue');
const EndFlightAuthorizationRequestEndReasonEnum
    _$endFlightAuthorizationRequestEndReasonEnum_weatherAbort =
    const EndFlightAuthorizationRequestEndReasonEnum._('weatherAbort');

EndFlightAuthorizationRequestEndReasonEnum
    _$endFlightAuthorizationRequestEndReasonEnumValueOf(String name) {
  switch (name) {
    case 'normalCompletion':
      return _$endFlightAuthorizationRequestEndReasonEnum_normalCompletion;
    case 'emergencyLanding':
      return _$endFlightAuthorizationRequestEndReasonEnum_emergencyLanding;
    case 'technicalIssue':
      return _$endFlightAuthorizationRequestEndReasonEnum_technicalIssue;
    case 'weatherAbort':
      return _$endFlightAuthorizationRequestEndReasonEnum_weatherAbort;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EndFlightAuthorizationRequestEndReasonEnum>
    _$endFlightAuthorizationRequestEndReasonEnumValues = BuiltSet<
        EndFlightAuthorizationRequestEndReasonEnum>(const <EndFlightAuthorizationRequestEndReasonEnum>[
  _$endFlightAuthorizationRequestEndReasonEnum_normalCompletion,
  _$endFlightAuthorizationRequestEndReasonEnum_emergencyLanding,
  _$endFlightAuthorizationRequestEndReasonEnum_technicalIssue,
  _$endFlightAuthorizationRequestEndReasonEnum_weatherAbort,
]);

Serializer<EndFlightAuthorizationRequestEndReasonEnum>
    _$endFlightAuthorizationRequestEndReasonEnumSerializer =
    _$EndFlightAuthorizationRequestEndReasonEnumSerializer();

class _$EndFlightAuthorizationRequestEndReasonEnumSerializer
    implements PrimitiveSerializer<EndFlightAuthorizationRequestEndReasonEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normalCompletion': 'normal_completion',
    'emergencyLanding': 'emergency_landing',
    'technicalIssue': 'technical_issue',
    'weatherAbort': 'weather_abort',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal_completion': 'normalCompletion',
    'emergency_landing': 'emergencyLanding',
    'technical_issue': 'technicalIssue',
    'weather_abort': 'weatherAbort',
  };

  @override
  final Iterable<Type> types = const <Type>[
    EndFlightAuthorizationRequestEndReasonEnum
  ];
  @override
  final String wireName = 'EndFlightAuthorizationRequestEndReasonEnum';

  @override
  Object serialize(Serializers serializers,
          EndFlightAuthorizationRequestEndReasonEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EndFlightAuthorizationRequestEndReasonEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EndFlightAuthorizationRequestEndReasonEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EndFlightAuthorizationRequest extends EndFlightAuthorizationRequest {
  @override
  final DateTime? actualEndTime;
  @override
  final EndFlightAuthorizationRequestEndReasonEnum? endReason;
  @override
  final Position3D? finalPosition;

  factory _$EndFlightAuthorizationRequest(
          [void Function(EndFlightAuthorizationRequestBuilder)? updates]) =>
      (EndFlightAuthorizationRequestBuilder()..update(updates))._build();

  _$EndFlightAuthorizationRequest._(
      {this.actualEndTime, this.endReason, this.finalPosition})
      : super._();
  @override
  EndFlightAuthorizationRequest rebuild(
          void Function(EndFlightAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndFlightAuthorizationRequestBuilder toBuilder() =>
      EndFlightAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndFlightAuthorizationRequest &&
        actualEndTime == other.actualEndTime &&
        endReason == other.endReason &&
        finalPosition == other.finalPosition;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, actualEndTime.hashCode);
    _$hash = $jc(_$hash, endReason.hashCode);
    _$hash = $jc(_$hash, finalPosition.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EndFlightAuthorizationRequest')
          ..add('actualEndTime', actualEndTime)
          ..add('endReason', endReason)
          ..add('finalPosition', finalPosition))
        .toString();
  }
}

class EndFlightAuthorizationRequestBuilder
    implements
        Builder<EndFlightAuthorizationRequest,
            EndFlightAuthorizationRequestBuilder> {
  _$EndFlightAuthorizationRequest? _$v;

  DateTime? _actualEndTime;
  DateTime? get actualEndTime => _$this._actualEndTime;
  set actualEndTime(DateTime? actualEndTime) =>
      _$this._actualEndTime = actualEndTime;

  EndFlightAuthorizationRequestEndReasonEnum? _endReason;
  EndFlightAuthorizationRequestEndReasonEnum? get endReason =>
      _$this._endReason;
  set endReason(EndFlightAuthorizationRequestEndReasonEnum? endReason) =>
      _$this._endReason = endReason;

  Position3DBuilder? _finalPosition;
  Position3DBuilder get finalPosition =>
      _$this._finalPosition ??= Position3DBuilder();
  set finalPosition(Position3DBuilder? finalPosition) =>
      _$this._finalPosition = finalPosition;

  EndFlightAuthorizationRequestBuilder() {
    EndFlightAuthorizationRequest._defaults(this);
  }

  EndFlightAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _actualEndTime = $v.actualEndTime;
      _endReason = $v.endReason;
      _finalPosition = $v.finalPosition?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndFlightAuthorizationRequest other) {
    _$v = other as _$EndFlightAuthorizationRequest;
  }

  @override
  void update(void Function(EndFlightAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndFlightAuthorizationRequest build() => _build();

  _$EndFlightAuthorizationRequest _build() {
    _$EndFlightAuthorizationRequest _$result;
    try {
      _$result = _$v ??
          _$EndFlightAuthorizationRequest._(
            actualEndTime: actualEndTime,
            endReason: endReason,
            finalPosition: _finalPosition?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'finalPosition';
        _finalPosition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EndFlightAuthorizationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

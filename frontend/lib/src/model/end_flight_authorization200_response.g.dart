// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'end_flight_authorization200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$EndFlightAuthorization200Response
    extends EndFlightAuthorization200Response {
  @override
  final String? message;
  @override
  final DateTime? endTime;

  factory _$EndFlightAuthorization200Response(
          [void Function(EndFlightAuthorization200ResponseBuilder)? updates]) =>
      (EndFlightAuthorization200ResponseBuilder()..update(updates))._build();

  _$EndFlightAuthorization200Response._({this.message, this.endTime})
      : super._();
  @override
  EndFlightAuthorization200Response rebuild(
          void Function(EndFlightAuthorization200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EndFlightAuthorization200ResponseBuilder toBuilder() =>
      EndFlightAuthorization200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EndFlightAuthorization200Response &&
        message == other.message &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EndFlightAuthorization200Response')
          ..add('message', message)
          ..add('endTime', endTime))
        .toString();
  }
}

class EndFlightAuthorization200ResponseBuilder
    implements
        Builder<EndFlightAuthorization200Response,
            EndFlightAuthorization200ResponseBuilder> {
  _$EndFlightAuthorization200Response? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  EndFlightAuthorization200ResponseBuilder() {
    EndFlightAuthorization200Response._defaults(this);
  }

  EndFlightAuthorization200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EndFlightAuthorization200Response other) {
    _$v = other as _$EndFlightAuthorization200Response;
  }

  @override
  void update(
      void Function(EndFlightAuthorization200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EndFlightAuthorization200Response build() => _build();

  _$EndFlightAuthorization200Response _build() {
    final _$result = _$v ??
        _$EndFlightAuthorization200Response._(
          message: message,
          endTime: endTime,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

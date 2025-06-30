// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_authorization_update_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlightAuthorizationUpdateRequest
    extends FlightAuthorizationUpdateRequest {
  @override
  final FlightTrajectory4D? newTrajectory;
  @override
  final DateTime? newStartTime;
  @override
  final DateTime? newEndTime;
  @override
  final String? updateReason;

  factory _$FlightAuthorizationUpdateRequest(
          [void Function(FlightAuthorizationUpdateRequestBuilder)? updates]) =>
      (FlightAuthorizationUpdateRequestBuilder()..update(updates))._build();

  _$FlightAuthorizationUpdateRequest._(
      {this.newTrajectory,
      this.newStartTime,
      this.newEndTime,
      this.updateReason})
      : super._();
  @override
  FlightAuthorizationUpdateRequest rebuild(
          void Function(FlightAuthorizationUpdateRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightAuthorizationUpdateRequestBuilder toBuilder() =>
      FlightAuthorizationUpdateRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightAuthorizationUpdateRequest &&
        newTrajectory == other.newTrajectory &&
        newStartTime == other.newStartTime &&
        newEndTime == other.newEndTime &&
        updateReason == other.updateReason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, newTrajectory.hashCode);
    _$hash = $jc(_$hash, newStartTime.hashCode);
    _$hash = $jc(_$hash, newEndTime.hashCode);
    _$hash = $jc(_$hash, updateReason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlightAuthorizationUpdateRequest')
          ..add('newTrajectory', newTrajectory)
          ..add('newStartTime', newStartTime)
          ..add('newEndTime', newEndTime)
          ..add('updateReason', updateReason))
        .toString();
  }
}

class FlightAuthorizationUpdateRequestBuilder
    implements
        Builder<FlightAuthorizationUpdateRequest,
            FlightAuthorizationUpdateRequestBuilder> {
  _$FlightAuthorizationUpdateRequest? _$v;

  FlightTrajectory4DBuilder? _newTrajectory;
  FlightTrajectory4DBuilder get newTrajectory =>
      _$this._newTrajectory ??= FlightTrajectory4DBuilder();
  set newTrajectory(FlightTrajectory4DBuilder? newTrajectory) =>
      _$this._newTrajectory = newTrajectory;

  DateTime? _newStartTime;
  DateTime? get newStartTime => _$this._newStartTime;
  set newStartTime(DateTime? newStartTime) =>
      _$this._newStartTime = newStartTime;

  DateTime? _newEndTime;
  DateTime? get newEndTime => _$this._newEndTime;
  set newEndTime(DateTime? newEndTime) => _$this._newEndTime = newEndTime;

  String? _updateReason;
  String? get updateReason => _$this._updateReason;
  set updateReason(String? updateReason) => _$this._updateReason = updateReason;

  FlightAuthorizationUpdateRequestBuilder() {
    FlightAuthorizationUpdateRequest._defaults(this);
  }

  FlightAuthorizationUpdateRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _newTrajectory = $v.newTrajectory?.toBuilder();
      _newStartTime = $v.newStartTime;
      _newEndTime = $v.newEndTime;
      _updateReason = $v.updateReason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightAuthorizationUpdateRequest other) {
    _$v = other as _$FlightAuthorizationUpdateRequest;
  }

  @override
  void update(void Function(FlightAuthorizationUpdateRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightAuthorizationUpdateRequest build() => _build();

  _$FlightAuthorizationUpdateRequest _build() {
    _$FlightAuthorizationUpdateRequest _$result;
    try {
      _$result = _$v ??
          _$FlightAuthorizationUpdateRequest._(
            newTrajectory: _newTrajectory?.build(),
            newStartTime: newStartTime,
            newEndTime: newEndTime,
            updateReason: updateReason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'newTrajectory';
        _newTrajectory?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FlightAuthorizationUpdateRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

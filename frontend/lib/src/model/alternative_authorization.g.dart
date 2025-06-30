// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_authorization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AlternativeAuthorization extends AlternativeAuthorization {
  @override
  final DateTime? suggestedStartTime;
  @override
  final FlightTrajectory4D? suggestedTrajectory;
  @override
  final String? reason;

  factory _$AlternativeAuthorization(
          [void Function(AlternativeAuthorizationBuilder)? updates]) =>
      (AlternativeAuthorizationBuilder()..update(updates))._build();

  _$AlternativeAuthorization._(
      {this.suggestedStartTime, this.suggestedTrajectory, this.reason})
      : super._();
  @override
  AlternativeAuthorization rebuild(
          void Function(AlternativeAuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeAuthorizationBuilder toBuilder() =>
      AlternativeAuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeAuthorization &&
        suggestedStartTime == other.suggestedStartTime &&
        suggestedTrajectory == other.suggestedTrajectory &&
        reason == other.reason;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, suggestedStartTime.hashCode);
    _$hash = $jc(_$hash, suggestedTrajectory.hashCode);
    _$hash = $jc(_$hash, reason.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlternativeAuthorization')
          ..add('suggestedStartTime', suggestedStartTime)
          ..add('suggestedTrajectory', suggestedTrajectory)
          ..add('reason', reason))
        .toString();
  }
}

class AlternativeAuthorizationBuilder
    implements
        Builder<AlternativeAuthorization, AlternativeAuthorizationBuilder> {
  _$AlternativeAuthorization? _$v;

  DateTime? _suggestedStartTime;
  DateTime? get suggestedStartTime => _$this._suggestedStartTime;
  set suggestedStartTime(DateTime? suggestedStartTime) =>
      _$this._suggestedStartTime = suggestedStartTime;

  FlightTrajectory4DBuilder? _suggestedTrajectory;
  FlightTrajectory4DBuilder get suggestedTrajectory =>
      _$this._suggestedTrajectory ??= FlightTrajectory4DBuilder();
  set suggestedTrajectory(FlightTrajectory4DBuilder? suggestedTrajectory) =>
      _$this._suggestedTrajectory = suggestedTrajectory;

  String? _reason;
  String? get reason => _$this._reason;
  set reason(String? reason) => _$this._reason = reason;

  AlternativeAuthorizationBuilder() {
    AlternativeAuthorization._defaults(this);
  }

  AlternativeAuthorizationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _suggestedStartTime = $v.suggestedStartTime;
      _suggestedTrajectory = $v.suggestedTrajectory?.toBuilder();
      _reason = $v.reason;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeAuthorization other) {
    _$v = other as _$AlternativeAuthorization;
  }

  @override
  void update(void Function(AlternativeAuthorizationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlternativeAuthorization build() => _build();

  _$AlternativeAuthorization _build() {
    _$AlternativeAuthorization _$result;
    try {
      _$result = _$v ??
          _$AlternativeAuthorization._(
            suggestedStartTime: suggestedStartTime,
            suggestedTrajectory: _suggestedTrajectory?.build(),
            reason: reason,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'suggestedTrajectory';
        _suggestedTrajectory?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'AlternativeAuthorization', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

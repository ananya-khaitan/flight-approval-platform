// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'airspace_restriction_altitude_limits.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AirspaceRestrictionAltitudeLimits
    extends AirspaceRestrictionAltitudeLimits {
  @override
  final double? minimumAltitude;
  @override
  final double? maximumAltitude;

  factory _$AirspaceRestrictionAltitudeLimits(
          [void Function(AirspaceRestrictionAltitudeLimitsBuilder)? updates]) =>
      (AirspaceRestrictionAltitudeLimitsBuilder()..update(updates))._build();

  _$AirspaceRestrictionAltitudeLimits._(
      {this.minimumAltitude, this.maximumAltitude})
      : super._();
  @override
  AirspaceRestrictionAltitudeLimits rebuild(
          void Function(AirspaceRestrictionAltitudeLimitsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AirspaceRestrictionAltitudeLimitsBuilder toBuilder() =>
      AirspaceRestrictionAltitudeLimitsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AirspaceRestrictionAltitudeLimits &&
        minimumAltitude == other.minimumAltitude &&
        maximumAltitude == other.maximumAltitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minimumAltitude.hashCode);
    _$hash = $jc(_$hash, maximumAltitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AirspaceRestrictionAltitudeLimits')
          ..add('minimumAltitude', minimumAltitude)
          ..add('maximumAltitude', maximumAltitude))
        .toString();
  }
}

class AirspaceRestrictionAltitudeLimitsBuilder
    implements
        Builder<AirspaceRestrictionAltitudeLimits,
            AirspaceRestrictionAltitudeLimitsBuilder> {
  _$AirspaceRestrictionAltitudeLimits? _$v;

  double? _minimumAltitude;
  double? get minimumAltitude => _$this._minimumAltitude;
  set minimumAltitude(double? minimumAltitude) =>
      _$this._minimumAltitude = minimumAltitude;

  double? _maximumAltitude;
  double? get maximumAltitude => _$this._maximumAltitude;
  set maximumAltitude(double? maximumAltitude) =>
      _$this._maximumAltitude = maximumAltitude;

  AirspaceRestrictionAltitudeLimitsBuilder() {
    AirspaceRestrictionAltitudeLimits._defaults(this);
  }

  AirspaceRestrictionAltitudeLimitsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minimumAltitude = $v.minimumAltitude;
      _maximumAltitude = $v.maximumAltitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AirspaceRestrictionAltitudeLimits other) {
    _$v = other as _$AirspaceRestrictionAltitudeLimits;
  }

  @override
  void update(
      void Function(AirspaceRestrictionAltitudeLimitsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AirspaceRestrictionAltitudeLimits build() => _build();

  _$AirspaceRestrictionAltitudeLimits _build() {
    final _$result = _$v ??
        _$AirspaceRestrictionAltitudeLimits._(
          minimumAltitude: minimumAltitude,
          maximumAltitude: maximumAltitude,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

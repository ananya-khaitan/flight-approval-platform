// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deviation_thresholds.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DeviationThresholds extends DeviationThresholds {
  @override
  final double horizontal;
  @override
  final double vertical;
  @override
  final double temporal;

  factory _$DeviationThresholds(
          [void Function(DeviationThresholdsBuilder)? updates]) =>
      (DeviationThresholdsBuilder()..update(updates))._build();

  _$DeviationThresholds._(
      {required this.horizontal,
      required this.vertical,
      required this.temporal})
      : super._();
  @override
  DeviationThresholds rebuild(
          void Function(DeviationThresholdsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DeviationThresholdsBuilder toBuilder() =>
      DeviationThresholdsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DeviationThresholds &&
        horizontal == other.horizontal &&
        vertical == other.vertical &&
        temporal == other.temporal;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, horizontal.hashCode);
    _$hash = $jc(_$hash, vertical.hashCode);
    _$hash = $jc(_$hash, temporal.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DeviationThresholds')
          ..add('horizontal', horizontal)
          ..add('vertical', vertical)
          ..add('temporal', temporal))
        .toString();
  }
}

class DeviationThresholdsBuilder
    implements Builder<DeviationThresholds, DeviationThresholdsBuilder> {
  _$DeviationThresholds? _$v;

  double? _horizontal;
  double? get horizontal => _$this._horizontal;
  set horizontal(double? horizontal) => _$this._horizontal = horizontal;

  double? _vertical;
  double? get vertical => _$this._vertical;
  set vertical(double? vertical) => _$this._vertical = vertical;

  double? _temporal;
  double? get temporal => _$this._temporal;
  set temporal(double? temporal) => _$this._temporal = temporal;

  DeviationThresholdsBuilder() {
    DeviationThresholds._defaults(this);
  }

  DeviationThresholdsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _horizontal = $v.horizontal;
      _vertical = $v.vertical;
      _temporal = $v.temporal;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DeviationThresholds other) {
    _$v = other as _$DeviationThresholds;
  }

  @override
  void update(void Function(DeviationThresholdsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DeviationThresholds build() => _build();

  _$DeviationThresholds _build() {
    final _$result = _$v ??
        _$DeviationThresholds._(
          horizontal: BuiltValueNullFieldError.checkNotNull(
              horizontal, r'DeviationThresholds', 'horizontal'),
          vertical: BuiltValueNullFieldError.checkNotNull(
              vertical, r'DeviationThresholds', 'vertical'),
          temporal: BuiltValueNullFieldError.checkNotNull(
              temporal, r'DeviationThresholds', 'temporal'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

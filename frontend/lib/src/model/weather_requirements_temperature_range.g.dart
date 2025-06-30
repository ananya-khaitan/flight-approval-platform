// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_requirements_temperature_range.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherRequirementsTemperatureRange
    extends WeatherRequirementsTemperatureRange {
  @override
  final double? minTemperature;
  @override
  final double? maxTemperature;

  factory _$WeatherRequirementsTemperatureRange(
          [void Function(WeatherRequirementsTemperatureRangeBuilder)?
              updates]) =>
      (WeatherRequirementsTemperatureRangeBuilder()..update(updates))._build();

  _$WeatherRequirementsTemperatureRange._(
      {this.minTemperature, this.maxTemperature})
      : super._();
  @override
  WeatherRequirementsTemperatureRange rebuild(
          void Function(WeatherRequirementsTemperatureRangeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherRequirementsTemperatureRangeBuilder toBuilder() =>
      WeatherRequirementsTemperatureRangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherRequirementsTemperatureRange &&
        minTemperature == other.minTemperature &&
        maxTemperature == other.maxTemperature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, minTemperature.hashCode);
    _$hash = $jc(_$hash, maxTemperature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherRequirementsTemperatureRange')
          ..add('minTemperature', minTemperature)
          ..add('maxTemperature', maxTemperature))
        .toString();
  }
}

class WeatherRequirementsTemperatureRangeBuilder
    implements
        Builder<WeatherRequirementsTemperatureRange,
            WeatherRequirementsTemperatureRangeBuilder> {
  _$WeatherRequirementsTemperatureRange? _$v;

  double? _minTemperature;
  double? get minTemperature => _$this._minTemperature;
  set minTemperature(double? minTemperature) =>
      _$this._minTemperature = minTemperature;

  double? _maxTemperature;
  double? get maxTemperature => _$this._maxTemperature;
  set maxTemperature(double? maxTemperature) =>
      _$this._maxTemperature = maxTemperature;

  WeatherRequirementsTemperatureRangeBuilder() {
    WeatherRequirementsTemperatureRange._defaults(this);
  }

  WeatherRequirementsTemperatureRangeBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _minTemperature = $v.minTemperature;
      _maxTemperature = $v.maxTemperature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherRequirementsTemperatureRange other) {
    _$v = other as _$WeatherRequirementsTemperatureRange;
  }

  @override
  void update(
      void Function(WeatherRequirementsTemperatureRangeBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherRequirementsTemperatureRange build() => _build();

  _$WeatherRequirementsTemperatureRange _build() {
    final _$result = _$v ??
        _$WeatherRequirementsTemperatureRange._(
          minTemperature: minTemperature,
          maxTemperature: maxTemperature,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

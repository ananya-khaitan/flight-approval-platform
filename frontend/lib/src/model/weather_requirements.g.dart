// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_requirements.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherRequirements extends WeatherRequirements {
  @override
  final double? maxWindSpeed;
  @override
  final double? minVisibility;
  @override
  final double? maxPrecipitation;
  @override
  final WeatherRequirementsTemperatureRange? temperatureRange;

  factory _$WeatherRequirements(
          [void Function(WeatherRequirementsBuilder)? updates]) =>
      (WeatherRequirementsBuilder()..update(updates))._build();

  _$WeatherRequirements._(
      {this.maxWindSpeed,
      this.minVisibility,
      this.maxPrecipitation,
      this.temperatureRange})
      : super._();
  @override
  WeatherRequirements rebuild(
          void Function(WeatherRequirementsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherRequirementsBuilder toBuilder() =>
      WeatherRequirementsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherRequirements &&
        maxWindSpeed == other.maxWindSpeed &&
        minVisibility == other.minVisibility &&
        maxPrecipitation == other.maxPrecipitation &&
        temperatureRange == other.temperatureRange;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, maxWindSpeed.hashCode);
    _$hash = $jc(_$hash, minVisibility.hashCode);
    _$hash = $jc(_$hash, maxPrecipitation.hashCode);
    _$hash = $jc(_$hash, temperatureRange.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherRequirements')
          ..add('maxWindSpeed', maxWindSpeed)
          ..add('minVisibility', minVisibility)
          ..add('maxPrecipitation', maxPrecipitation)
          ..add('temperatureRange', temperatureRange))
        .toString();
  }
}

class WeatherRequirementsBuilder
    implements Builder<WeatherRequirements, WeatherRequirementsBuilder> {
  _$WeatherRequirements? _$v;

  double? _maxWindSpeed;
  double? get maxWindSpeed => _$this._maxWindSpeed;
  set maxWindSpeed(double? maxWindSpeed) => _$this._maxWindSpeed = maxWindSpeed;

  double? _minVisibility;
  double? get minVisibility => _$this._minVisibility;
  set minVisibility(double? minVisibility) =>
      _$this._minVisibility = minVisibility;

  double? _maxPrecipitation;
  double? get maxPrecipitation => _$this._maxPrecipitation;
  set maxPrecipitation(double? maxPrecipitation) =>
      _$this._maxPrecipitation = maxPrecipitation;

  WeatherRequirementsTemperatureRangeBuilder? _temperatureRange;
  WeatherRequirementsTemperatureRangeBuilder get temperatureRange =>
      _$this._temperatureRange ??= WeatherRequirementsTemperatureRangeBuilder();
  set temperatureRange(
          WeatherRequirementsTemperatureRangeBuilder? temperatureRange) =>
      _$this._temperatureRange = temperatureRange;

  WeatherRequirementsBuilder() {
    WeatherRequirements._defaults(this);
  }

  WeatherRequirementsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _maxWindSpeed = $v.maxWindSpeed;
      _minVisibility = $v.minVisibility;
      _maxPrecipitation = $v.maxPrecipitation;
      _temperatureRange = $v.temperatureRange?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherRequirements other) {
    _$v = other as _$WeatherRequirements;
  }

  @override
  void update(void Function(WeatherRequirementsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherRequirements build() => _build();

  _$WeatherRequirements _build() {
    _$WeatherRequirements _$result;
    try {
      _$result = _$v ??
          _$WeatherRequirements._(
            maxWindSpeed: maxWindSpeed,
            minVisibility: minVisibility,
            maxPrecipitation: maxPrecipitation,
            temperatureRange: _temperatureRange?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'temperatureRange';
        _temperatureRange?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WeatherRequirements', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

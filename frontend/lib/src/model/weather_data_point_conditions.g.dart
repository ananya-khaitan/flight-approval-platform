// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_point_conditions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherDataPointConditions extends WeatherDataPointConditions {
  @override
  final double? windSpeed;
  @override
  final double? windDirection;
  @override
  final double? visibility;
  @override
  final double? precipitation;
  @override
  final double? temperature;
  @override
  final double? pressure;

  factory _$WeatherDataPointConditions(
          [void Function(WeatherDataPointConditionsBuilder)? updates]) =>
      (WeatherDataPointConditionsBuilder()..update(updates))._build();

  _$WeatherDataPointConditions._(
      {this.windSpeed,
      this.windDirection,
      this.visibility,
      this.precipitation,
      this.temperature,
      this.pressure})
      : super._();
  @override
  WeatherDataPointConditions rebuild(
          void Function(WeatherDataPointConditionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDataPointConditionsBuilder toBuilder() =>
      WeatherDataPointConditionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDataPointConditions &&
        windSpeed == other.windSpeed &&
        windDirection == other.windDirection &&
        visibility == other.visibility &&
        precipitation == other.precipitation &&
        temperature == other.temperature &&
        pressure == other.pressure;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, windSpeed.hashCode);
    _$hash = $jc(_$hash, windDirection.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, precipitation.hashCode);
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, pressure.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDataPointConditions')
          ..add('windSpeed', windSpeed)
          ..add('windDirection', windDirection)
          ..add('visibility', visibility)
          ..add('precipitation', precipitation)
          ..add('temperature', temperature)
          ..add('pressure', pressure))
        .toString();
  }
}

class WeatherDataPointConditionsBuilder
    implements
        Builder<WeatherDataPointConditions, WeatherDataPointConditionsBuilder> {
  _$WeatherDataPointConditions? _$v;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  double? _windDirection;
  double? get windDirection => _$this._windDirection;
  set windDirection(double? windDirection) =>
      _$this._windDirection = windDirection;

  double? _visibility;
  double? get visibility => _$this._visibility;
  set visibility(double? visibility) => _$this._visibility = visibility;

  double? _precipitation;
  double? get precipitation => _$this._precipitation;
  set precipitation(double? precipitation) =>
      _$this._precipitation = precipitation;

  double? _temperature;
  double? get temperature => _$this._temperature;
  set temperature(double? temperature) => _$this._temperature = temperature;

  double? _pressure;
  double? get pressure => _$this._pressure;
  set pressure(double? pressure) => _$this._pressure = pressure;

  WeatherDataPointConditionsBuilder() {
    WeatherDataPointConditions._defaults(this);
  }

  WeatherDataPointConditionsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _windSpeed = $v.windSpeed;
      _windDirection = $v.windDirection;
      _visibility = $v.visibility;
      _precipitation = $v.precipitation;
      _temperature = $v.temperature;
      _pressure = $v.pressure;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDataPointConditions other) {
    _$v = other as _$WeatherDataPointConditions;
  }

  @override
  void update(void Function(WeatherDataPointConditionsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDataPointConditions build() => _build();

  _$WeatherDataPointConditions _build() {
    final _$result = _$v ??
        _$WeatherDataPointConditions._(
          windSpeed: windSpeed,
          windDirection: windDirection,
          visibility: visibility,
          precipitation: precipitation,
          temperature: temperature,
          pressure: pressure,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

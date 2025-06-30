// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_information.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherInformation extends WeatherInformation {
  @override
  final DateTime forecastTime;
  @override
  final BuiltList<WeatherDataPoint> weatherData;
  @override
  final String? source_;
  @override
  final DateTime? lastUpdated;

  factory _$WeatherInformation(
          [void Function(WeatherInformationBuilder)? updates]) =>
      (WeatherInformationBuilder()..update(updates))._build();

  _$WeatherInformation._(
      {required this.forecastTime,
      required this.weatherData,
      this.source_,
      this.lastUpdated})
      : super._();
  @override
  WeatherInformation rebuild(
          void Function(WeatherInformationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherInformationBuilder toBuilder() =>
      WeatherInformationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherInformation &&
        forecastTime == other.forecastTime &&
        weatherData == other.weatherData &&
        source_ == other.source_ &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, forecastTime.hashCode);
    _$hash = $jc(_$hash, weatherData.hashCode);
    _$hash = $jc(_$hash, source_.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherInformation')
          ..add('forecastTime', forecastTime)
          ..add('weatherData', weatherData)
          ..add('source_', source_)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class WeatherInformationBuilder
    implements Builder<WeatherInformation, WeatherInformationBuilder> {
  _$WeatherInformation? _$v;

  DateTime? _forecastTime;
  DateTime? get forecastTime => _$this._forecastTime;
  set forecastTime(DateTime? forecastTime) =>
      _$this._forecastTime = forecastTime;

  ListBuilder<WeatherDataPoint>? _weatherData;
  ListBuilder<WeatherDataPoint> get weatherData =>
      _$this._weatherData ??= ListBuilder<WeatherDataPoint>();
  set weatherData(ListBuilder<WeatherDataPoint>? weatherData) =>
      _$this._weatherData = weatherData;

  String? _source_;
  String? get source_ => _$this._source_;
  set source_(String? source_) => _$this._source_ = source_;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  WeatherInformationBuilder() {
    WeatherInformation._defaults(this);
  }

  WeatherInformationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _forecastTime = $v.forecastTime;
      _weatherData = $v.weatherData.toBuilder();
      _source_ = $v.source_;
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherInformation other) {
    _$v = other as _$WeatherInformation;
  }

  @override
  void update(void Function(WeatherInformationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherInformation build() => _build();

  _$WeatherInformation _build() {
    _$WeatherInformation _$result;
    try {
      _$result = _$v ??
          _$WeatherInformation._(
            forecastTime: BuiltValueNullFieldError.checkNotNull(
                forecastTime, r'WeatherInformation', 'forecastTime'),
            weatherData: weatherData.build(),
            source_: source_,
            lastUpdated: lastUpdated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'weatherData';
        weatherData.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WeatherInformation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

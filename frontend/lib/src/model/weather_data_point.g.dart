// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_data_point.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WeatherDataPoint extends WeatherDataPoint {
  @override
  final Position3D position;
  @override
  final DateTime time;
  @override
  final WeatherDataPointConditions conditions;

  factory _$WeatherDataPoint(
          [void Function(WeatherDataPointBuilder)? updates]) =>
      (WeatherDataPointBuilder()..update(updates))._build();

  _$WeatherDataPoint._(
      {required this.position, required this.time, required this.conditions})
      : super._();
  @override
  WeatherDataPoint rebuild(void Function(WeatherDataPointBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDataPointBuilder toBuilder() =>
      WeatherDataPointBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDataPoint &&
        position == other.position &&
        time == other.time &&
        conditions == other.conditions;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, conditions.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDataPoint')
          ..add('position', position)
          ..add('time', time)
          ..add('conditions', conditions))
        .toString();
  }
}

class WeatherDataPointBuilder
    implements Builder<WeatherDataPoint, WeatherDataPointBuilder> {
  _$WeatherDataPoint? _$v;

  Position3DBuilder? _position;
  Position3DBuilder get position => _$this._position ??= Position3DBuilder();
  set position(Position3DBuilder? position) => _$this._position = position;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  WeatherDataPointConditionsBuilder? _conditions;
  WeatherDataPointConditionsBuilder get conditions =>
      _$this._conditions ??= WeatherDataPointConditionsBuilder();
  set conditions(WeatherDataPointConditionsBuilder? conditions) =>
      _$this._conditions = conditions;

  WeatherDataPointBuilder() {
    WeatherDataPoint._defaults(this);
  }

  WeatherDataPointBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position.toBuilder();
      _time = $v.time;
      _conditions = $v.conditions.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDataPoint other) {
    _$v = other as _$WeatherDataPoint;
  }

  @override
  void update(void Function(WeatherDataPointBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDataPoint build() => _build();

  _$WeatherDataPoint _build() {
    _$WeatherDataPoint _$result;
    try {
      _$result = _$v ??
          _$WeatherDataPoint._(
            position: position.build(),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'WeatherDataPoint', 'time'),
            conditions: conditions.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        position.build();

        _$failedField = 'conditions';
        conditions.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WeatherDataPoint', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

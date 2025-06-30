// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_period.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TimePeriod extends TimePeriod {
  @override
  final DateTime startTime;
  @override
  final DateTime endTime;

  factory _$TimePeriod([void Function(TimePeriodBuilder)? updates]) =>
      (TimePeriodBuilder()..update(updates))._build();

  _$TimePeriod._({required this.startTime, required this.endTime}) : super._();
  @override
  TimePeriod rebuild(void Function(TimePeriodBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TimePeriodBuilder toBuilder() => TimePeriodBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TimePeriod &&
        startTime == other.startTime &&
        endTime == other.endTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, startTime.hashCode);
    _$hash = $jc(_$hash, endTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TimePeriod')
          ..add('startTime', startTime)
          ..add('endTime', endTime))
        .toString();
  }
}

class TimePeriodBuilder implements Builder<TimePeriod, TimePeriodBuilder> {
  _$TimePeriod? _$v;

  DateTime? _startTime;
  DateTime? get startTime => _$this._startTime;
  set startTime(DateTime? startTime) => _$this._startTime = startTime;

  DateTime? _endTime;
  DateTime? get endTime => _$this._endTime;
  set endTime(DateTime? endTime) => _$this._endTime = endTime;

  TimePeriodBuilder() {
    TimePeriod._defaults(this);
  }

  TimePeriodBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TimePeriod other) {
    _$v = other as _$TimePeriod;
  }

  @override
  void update(void Function(TimePeriodBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TimePeriod build() => _build();

  _$TimePeriod _build() {
    final _$result = _$v ??
        _$TimePeriod._(
          startTime: BuiltValueNullFieldError.checkNotNull(
              startTime, r'TimePeriod', 'startTime'),
          endTime: BuiltValueNullFieldError.checkNotNull(
              endTime, r'TimePeriod', 'endTime'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

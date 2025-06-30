// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trajectory_point4_d.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$TrajectoryPoint4D extends TrajectoryPoint4D {
  @override
  final Position3D position;
  @override
  final DateTime time;
  @override
  final double? speed;
  @override
  final double? heading;

  factory _$TrajectoryPoint4D(
          [void Function(TrajectoryPoint4DBuilder)? updates]) =>
      (TrajectoryPoint4DBuilder()..update(updates))._build();

  _$TrajectoryPoint4D._(
      {required this.position, required this.time, this.speed, this.heading})
      : super._();
  @override
  TrajectoryPoint4D rebuild(void Function(TrajectoryPoint4DBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TrajectoryPoint4DBuilder toBuilder() =>
      TrajectoryPoint4DBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TrajectoryPoint4D &&
        position == other.position &&
        time == other.time &&
        speed == other.speed &&
        heading == other.heading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, position.hashCode);
    _$hash = $jc(_$hash, time.hashCode);
    _$hash = $jc(_$hash, speed.hashCode);
    _$hash = $jc(_$hash, heading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TrajectoryPoint4D')
          ..add('position', position)
          ..add('time', time)
          ..add('speed', speed)
          ..add('heading', heading))
        .toString();
  }
}

class TrajectoryPoint4DBuilder
    implements Builder<TrajectoryPoint4D, TrajectoryPoint4DBuilder> {
  _$TrajectoryPoint4D? _$v;

  Position3DBuilder? _position;
  Position3DBuilder get position => _$this._position ??= Position3DBuilder();
  set position(Position3DBuilder? position) => _$this._position = position;

  DateTime? _time;
  DateTime? get time => _$this._time;
  set time(DateTime? time) => _$this._time = time;

  double? _speed;
  double? get speed => _$this._speed;
  set speed(double? speed) => _$this._speed = speed;

  double? _heading;
  double? get heading => _$this._heading;
  set heading(double? heading) => _$this._heading = heading;

  TrajectoryPoint4DBuilder() {
    TrajectoryPoint4D._defaults(this);
  }

  TrajectoryPoint4DBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _position = $v.position.toBuilder();
      _time = $v.time;
      _speed = $v.speed;
      _heading = $v.heading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TrajectoryPoint4D other) {
    _$v = other as _$TrajectoryPoint4D;
  }

  @override
  void update(void Function(TrajectoryPoint4DBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TrajectoryPoint4D build() => _build();

  _$TrajectoryPoint4D _build() {
    _$TrajectoryPoint4D _$result;
    try {
      _$result = _$v ??
          _$TrajectoryPoint4D._(
            position: position.build(),
            time: BuiltValueNullFieldError.checkNotNull(
                time, r'TrajectoryPoint4D', 'time'),
            speed: speed,
            heading: heading,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'position';
        position.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'TrajectoryPoint4D', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

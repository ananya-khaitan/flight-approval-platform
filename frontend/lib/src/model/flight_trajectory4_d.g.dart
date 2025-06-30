// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_trajectory4_d.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FlightTrajectory4D extends FlightTrajectory4D {
  @override
  final BuiltList<TrajectoryPoint4D> trajectoryPoints;
  @override
  final DeviationThresholds deviationThresholds;
  @override
  final String? routeDescription;

  factory _$FlightTrajectory4D(
          [void Function(FlightTrajectory4DBuilder)? updates]) =>
      (FlightTrajectory4DBuilder()..update(updates))._build();

  _$FlightTrajectory4D._(
      {required this.trajectoryPoints,
      required this.deviationThresholds,
      this.routeDescription})
      : super._();
  @override
  FlightTrajectory4D rebuild(
          void Function(FlightTrajectory4DBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightTrajectory4DBuilder toBuilder() =>
      FlightTrajectory4DBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightTrajectory4D &&
        trajectoryPoints == other.trajectoryPoints &&
        deviationThresholds == other.deviationThresholds &&
        routeDescription == other.routeDescription;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, trajectoryPoints.hashCode);
    _$hash = $jc(_$hash, deviationThresholds.hashCode);
    _$hash = $jc(_$hash, routeDescription.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlightTrajectory4D')
          ..add('trajectoryPoints', trajectoryPoints)
          ..add('deviationThresholds', deviationThresholds)
          ..add('routeDescription', routeDescription))
        .toString();
  }
}

class FlightTrajectory4DBuilder
    implements Builder<FlightTrajectory4D, FlightTrajectory4DBuilder> {
  _$FlightTrajectory4D? _$v;

  ListBuilder<TrajectoryPoint4D>? _trajectoryPoints;
  ListBuilder<TrajectoryPoint4D> get trajectoryPoints =>
      _$this._trajectoryPoints ??= ListBuilder<TrajectoryPoint4D>();
  set trajectoryPoints(ListBuilder<TrajectoryPoint4D>? trajectoryPoints) =>
      _$this._trajectoryPoints = trajectoryPoints;

  DeviationThresholdsBuilder? _deviationThresholds;
  DeviationThresholdsBuilder get deviationThresholds =>
      _$this._deviationThresholds ??= DeviationThresholdsBuilder();
  set deviationThresholds(DeviationThresholdsBuilder? deviationThresholds) =>
      _$this._deviationThresholds = deviationThresholds;

  String? _routeDescription;
  String? get routeDescription => _$this._routeDescription;
  set routeDescription(String? routeDescription) =>
      _$this._routeDescription = routeDescription;

  FlightTrajectory4DBuilder() {
    FlightTrajectory4D._defaults(this);
  }

  FlightTrajectory4DBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _trajectoryPoints = $v.trajectoryPoints.toBuilder();
      _deviationThresholds = $v.deviationThresholds.toBuilder();
      _routeDescription = $v.routeDescription;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightTrajectory4D other) {
    _$v = other as _$FlightTrajectory4D;
  }

  @override
  void update(void Function(FlightTrajectory4DBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightTrajectory4D build() => _build();

  _$FlightTrajectory4D _build() {
    _$FlightTrajectory4D _$result;
    try {
      _$result = _$v ??
          _$FlightTrajectory4D._(
            trajectoryPoints: trajectoryPoints.build(),
            deviationThresholds: deviationThresholds.build(),
            routeDescription: routeDescription,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'trajectoryPoints';
        trajectoryPoints.build();
        _$failedField = 'deviationThresholds';
        deviationThresholds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FlightTrajectory4D', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

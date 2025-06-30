// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'safe_landing_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SafeLandingArea extends SafeLandingArea {
  @override
  final Position3D centerPosition;
  @override
  final double radius;

  factory _$SafeLandingArea([void Function(SafeLandingAreaBuilder)? updates]) =>
      (SafeLandingAreaBuilder()..update(updates))._build();

  _$SafeLandingArea._({required this.centerPosition, required this.radius})
      : super._();
  @override
  SafeLandingArea rebuild(void Function(SafeLandingAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SafeLandingAreaBuilder toBuilder() => SafeLandingAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SafeLandingArea &&
        centerPosition == other.centerPosition &&
        radius == other.radius;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, centerPosition.hashCode);
    _$hash = $jc(_$hash, radius.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SafeLandingArea')
          ..add('centerPosition', centerPosition)
          ..add('radius', radius))
        .toString();
  }
}

class SafeLandingAreaBuilder
    implements Builder<SafeLandingArea, SafeLandingAreaBuilder> {
  _$SafeLandingArea? _$v;

  Position3DBuilder? _centerPosition;
  Position3DBuilder get centerPosition =>
      _$this._centerPosition ??= Position3DBuilder();
  set centerPosition(Position3DBuilder? centerPosition) =>
      _$this._centerPosition = centerPosition;

  double? _radius;
  double? get radius => _$this._radius;
  set radius(double? radius) => _$this._radius = radius;

  SafeLandingAreaBuilder() {
    SafeLandingArea._defaults(this);
  }

  SafeLandingAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _centerPosition = $v.centerPosition.toBuilder();
      _radius = $v.radius;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SafeLandingArea other) {
    _$v = other as _$SafeLandingArea;
  }

  @override
  void update(void Function(SafeLandingAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SafeLandingArea build() => _build();

  _$SafeLandingArea _build() {
    _$SafeLandingArea _$result;
    try {
      _$result = _$v ??
          _$SafeLandingArea._(
            centerPosition: centerPosition.build(),
            radius: BuiltValueNullFieldError.checkNotNull(
                radius, r'SafeLandingArea', 'radius'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'centerPosition';
        centerPosition.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SafeLandingArea', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

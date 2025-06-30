// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'position3_d.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const Position3DAltitudeReferenceEnum _$position3DAltitudeReferenceEnum_MSL =
    const Position3DAltitudeReferenceEnum._('MSL');
const Position3DAltitudeReferenceEnum _$position3DAltitudeReferenceEnum_AGL =
    const Position3DAltitudeReferenceEnum._('AGL');
const Position3DAltitudeReferenceEnum _$position3DAltitudeReferenceEnum_wGS84 =
    const Position3DAltitudeReferenceEnum._('wGS84');

Position3DAltitudeReferenceEnum _$position3DAltitudeReferenceEnumValueOf(
    String name) {
  switch (name) {
    case 'MSL':
      return _$position3DAltitudeReferenceEnum_MSL;
    case 'AGL':
      return _$position3DAltitudeReferenceEnum_AGL;
    case 'wGS84':
      return _$position3DAltitudeReferenceEnum_wGS84;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<Position3DAltitudeReferenceEnum>
    _$position3DAltitudeReferenceEnumValues = BuiltSet<
        Position3DAltitudeReferenceEnum>(const <Position3DAltitudeReferenceEnum>[
  _$position3DAltitudeReferenceEnum_MSL,
  _$position3DAltitudeReferenceEnum_AGL,
  _$position3DAltitudeReferenceEnum_wGS84,
]);

Serializer<Position3DAltitudeReferenceEnum>
    _$position3DAltitudeReferenceEnumSerializer =
    _$Position3DAltitudeReferenceEnumSerializer();

class _$Position3DAltitudeReferenceEnumSerializer
    implements PrimitiveSerializer<Position3DAltitudeReferenceEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'MSL': 'MSL',
    'AGL': 'AGL',
    'wGS84': 'WGS84',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'MSL': 'MSL',
    'AGL': 'AGL',
    'WGS84': 'wGS84',
  };

  @override
  final Iterable<Type> types = const <Type>[Position3DAltitudeReferenceEnum];
  @override
  final String wireName = 'Position3DAltitudeReferenceEnum';

  @override
  Object serialize(
          Serializers serializers, Position3DAltitudeReferenceEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  Position3DAltitudeReferenceEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      Position3DAltitudeReferenceEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Position3D extends Position3D {
  @override
  final double latitude;
  @override
  final double longitude;
  @override
  final double altitude;
  @override
  final Position3DAltitudeReferenceEnum? altitudeReference;

  factory _$Position3D([void Function(Position3DBuilder)? updates]) =>
      (Position3DBuilder()..update(updates))._build();

  _$Position3D._(
      {required this.latitude,
      required this.longitude,
      required this.altitude,
      this.altitudeReference})
      : super._();
  @override
  Position3D rebuild(void Function(Position3DBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  Position3DBuilder toBuilder() => Position3DBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Position3D &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        altitude == other.altitude &&
        altitudeReference == other.altitudeReference;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jc(_$hash, altitude.hashCode);
    _$hash = $jc(_$hash, altitudeReference.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Position3D')
          ..add('latitude', latitude)
          ..add('longitude', longitude)
          ..add('altitude', altitude)
          ..add('altitudeReference', altitudeReference))
        .toString();
  }
}

class Position3DBuilder implements Builder<Position3D, Position3DBuilder> {
  _$Position3D? _$v;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  double? _altitude;
  double? get altitude => _$this._altitude;
  set altitude(double? altitude) => _$this._altitude = altitude;

  Position3DAltitudeReferenceEnum? _altitudeReference;
  Position3DAltitudeReferenceEnum? get altitudeReference =>
      _$this._altitudeReference;
  set altitudeReference(Position3DAltitudeReferenceEnum? altitudeReference) =>
      _$this._altitudeReference = altitudeReference;

  Position3DBuilder() {
    Position3D._defaults(this);
  }

  Position3DBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _altitude = $v.altitude;
      _altitudeReference = $v.altitudeReference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Position3D other) {
    _$v = other as _$Position3D;
  }

  @override
  void update(void Function(Position3DBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Position3D build() => _build();

  _$Position3D _build() {
    final _$result = _$v ??
        _$Position3D._(
          latitude: BuiltValueNullFieldError.checkNotNull(
              latitude, r'Position3D', 'latitude'),
          longitude: BuiltValueNullFieldError.checkNotNull(
              longitude, r'Position3D', 'longitude'),
          altitude: BuiltValueNullFieldError.checkNotNull(
              altitude, r'Position3D', 'altitude'),
          altitudeReference: altitudeReference,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

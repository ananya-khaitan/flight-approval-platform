// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geographic_area.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const GeographicAreaAreaTypeEnum _$geographicAreaAreaTypeEnum_polygon =
    const GeographicAreaAreaTypeEnum._('polygon');
const GeographicAreaAreaTypeEnum _$geographicAreaAreaTypeEnum_circle =
    const GeographicAreaAreaTypeEnum._('circle');
const GeographicAreaAreaTypeEnum _$geographicAreaAreaTypeEnum_rectangle =
    const GeographicAreaAreaTypeEnum._('rectangle');

GeographicAreaAreaTypeEnum _$geographicAreaAreaTypeEnumValueOf(String name) {
  switch (name) {
    case 'polygon':
      return _$geographicAreaAreaTypeEnum_polygon;
    case 'circle':
      return _$geographicAreaAreaTypeEnum_circle;
    case 'rectangle':
      return _$geographicAreaAreaTypeEnum_rectangle;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<GeographicAreaAreaTypeEnum> _$geographicAreaAreaTypeEnumValues =
    BuiltSet<GeographicAreaAreaTypeEnum>(const <GeographicAreaAreaTypeEnum>[
  _$geographicAreaAreaTypeEnum_polygon,
  _$geographicAreaAreaTypeEnum_circle,
  _$geographicAreaAreaTypeEnum_rectangle,
]);

Serializer<GeographicAreaAreaTypeEnum> _$geographicAreaAreaTypeEnumSerializer =
    _$GeographicAreaAreaTypeEnumSerializer();

class _$GeographicAreaAreaTypeEnumSerializer
    implements PrimitiveSerializer<GeographicAreaAreaTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'polygon': 'polygon',
    'circle': 'circle',
    'rectangle': 'rectangle',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'polygon': 'polygon',
    'circle': 'circle',
    'rectangle': 'rectangle',
  };

  @override
  final Iterable<Type> types = const <Type>[GeographicAreaAreaTypeEnum];
  @override
  final String wireName = 'GeographicAreaAreaTypeEnum';

  @override
  Object serialize(Serializers serializers, GeographicAreaAreaTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  GeographicAreaAreaTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      GeographicAreaAreaTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$GeographicArea extends GeographicArea {
  @override
  final GeographicAreaAreaTypeEnum areaType;
  @override
  final BuiltList<num>? coordinates;

  factory _$GeographicArea([void Function(GeographicAreaBuilder)? updates]) =>
      (GeographicAreaBuilder()..update(updates))._build();

  _$GeographicArea._({required this.areaType, this.coordinates}) : super._();
  @override
  GeographicArea rebuild(void Function(GeographicAreaBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GeographicAreaBuilder toBuilder() => GeographicAreaBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GeographicArea &&
        areaType == other.areaType &&
        coordinates == other.coordinates;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, areaType.hashCode);
    _$hash = $jc(_$hash, coordinates.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GeographicArea')
          ..add('areaType', areaType)
          ..add('coordinates', coordinates))
        .toString();
  }
}

class GeographicAreaBuilder
    implements Builder<GeographicArea, GeographicAreaBuilder> {
  _$GeographicArea? _$v;

  GeographicAreaAreaTypeEnum? _areaType;
  GeographicAreaAreaTypeEnum? get areaType => _$this._areaType;
  set areaType(GeographicAreaAreaTypeEnum? areaType) =>
      _$this._areaType = areaType;

  ListBuilder<num>? _coordinates;
  ListBuilder<num> get coordinates =>
      _$this._coordinates ??= ListBuilder<num>();
  set coordinates(ListBuilder<num>? coordinates) =>
      _$this._coordinates = coordinates;

  GeographicAreaBuilder() {
    GeographicArea._defaults(this);
  }

  GeographicAreaBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _areaType = $v.areaType;
      _coordinates = $v.coordinates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GeographicArea other) {
    _$v = other as _$GeographicArea;
  }

  @override
  void update(void Function(GeographicAreaBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GeographicArea build() => _build();

  _$GeographicArea _build() {
    _$GeographicArea _$result;
    try {
      _$result = _$v ??
          _$GeographicArea._(
            areaType: BuiltValueNullFieldError.checkNotNull(
                areaType, r'GeographicArea', 'areaType'),
            coordinates: _coordinates?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'coordinates';
        _coordinates?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GeographicArea', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

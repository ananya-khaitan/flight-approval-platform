// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_airspace_restrictions200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$GetAirspaceRestrictions200Response
    extends GetAirspaceRestrictions200Response {
  @override
  final BuiltList<AirspaceRestriction>? restrictions;
  @override
  final DateTime? lastUpdated;

  factory _$GetAirspaceRestrictions200Response(
          [void Function(GetAirspaceRestrictions200ResponseBuilder)?
              updates]) =>
      (GetAirspaceRestrictions200ResponseBuilder()..update(updates))._build();

  _$GetAirspaceRestrictions200Response._({this.restrictions, this.lastUpdated})
      : super._();
  @override
  GetAirspaceRestrictions200Response rebuild(
          void Function(GetAirspaceRestrictions200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAirspaceRestrictions200ResponseBuilder toBuilder() =>
      GetAirspaceRestrictions200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAirspaceRestrictions200Response &&
        restrictions == other.restrictions &&
        lastUpdated == other.lastUpdated;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, restrictions.hashCode);
    _$hash = $jc(_$hash, lastUpdated.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetAirspaceRestrictions200Response')
          ..add('restrictions', restrictions)
          ..add('lastUpdated', lastUpdated))
        .toString();
  }
}

class GetAirspaceRestrictions200ResponseBuilder
    implements
        Builder<GetAirspaceRestrictions200Response,
            GetAirspaceRestrictions200ResponseBuilder> {
  _$GetAirspaceRestrictions200Response? _$v;

  ListBuilder<AirspaceRestriction>? _restrictions;
  ListBuilder<AirspaceRestriction> get restrictions =>
      _$this._restrictions ??= ListBuilder<AirspaceRestriction>();
  set restrictions(ListBuilder<AirspaceRestriction>? restrictions) =>
      _$this._restrictions = restrictions;

  DateTime? _lastUpdated;
  DateTime? get lastUpdated => _$this._lastUpdated;
  set lastUpdated(DateTime? lastUpdated) => _$this._lastUpdated = lastUpdated;

  GetAirspaceRestrictions200ResponseBuilder() {
    GetAirspaceRestrictions200Response._defaults(this);
  }

  GetAirspaceRestrictions200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _restrictions = $v.restrictions?.toBuilder();
      _lastUpdated = $v.lastUpdated;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAirspaceRestrictions200Response other) {
    _$v = other as _$GetAirspaceRestrictions200Response;
  }

  @override
  void update(
      void Function(GetAirspaceRestrictions200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAirspaceRestrictions200Response build() => _build();

  _$GetAirspaceRestrictions200Response _build() {
    _$GetAirspaceRestrictions200Response _$result;
    try {
      _$result = _$v ??
          _$GetAirspaceRestrictions200Response._(
            restrictions: _restrictions?.build(),
            lastUpdated: lastUpdated,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'restrictions';
        _restrictions?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'GetAirspaceRestrictions200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

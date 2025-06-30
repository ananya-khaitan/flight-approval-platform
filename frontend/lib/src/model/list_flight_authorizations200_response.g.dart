// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_flight_authorizations200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListFlightAuthorizations200Response
    extends ListFlightAuthorizations200Response {
  @override
  final BuiltList<FlightAuthorizationSummary>? authorizations;
  @override
  final int? total;
  @override
  final int? page;
  @override
  final int? limit;

  factory _$ListFlightAuthorizations200Response(
          [void Function(ListFlightAuthorizations200ResponseBuilder)?
              updates]) =>
      (ListFlightAuthorizations200ResponseBuilder()..update(updates))._build();

  _$ListFlightAuthorizations200Response._(
      {this.authorizations, this.total, this.page, this.limit})
      : super._();
  @override
  ListFlightAuthorizations200Response rebuild(
          void Function(ListFlightAuthorizations200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListFlightAuthorizations200ResponseBuilder toBuilder() =>
      ListFlightAuthorizations200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListFlightAuthorizations200Response &&
        authorizations == other.authorizations &&
        total == other.total &&
        page == other.page &&
        limit == other.limit;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorizations.hashCode);
    _$hash = $jc(_$hash, total.hashCode);
    _$hash = $jc(_$hash, page.hashCode);
    _$hash = $jc(_$hash, limit.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListFlightAuthorizations200Response')
          ..add('authorizations', authorizations)
          ..add('total', total)
          ..add('page', page)
          ..add('limit', limit))
        .toString();
  }
}

class ListFlightAuthorizations200ResponseBuilder
    implements
        Builder<ListFlightAuthorizations200Response,
            ListFlightAuthorizations200ResponseBuilder> {
  _$ListFlightAuthorizations200Response? _$v;

  ListBuilder<FlightAuthorizationSummary>? _authorizations;
  ListBuilder<FlightAuthorizationSummary> get authorizations =>
      _$this._authorizations ??= ListBuilder<FlightAuthorizationSummary>();
  set authorizations(ListBuilder<FlightAuthorizationSummary>? authorizations) =>
      _$this._authorizations = authorizations;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  int? _page;
  int? get page => _$this._page;
  set page(int? page) => _$this._page = page;

  int? _limit;
  int? get limit => _$this._limit;
  set limit(int? limit) => _$this._limit = limit;

  ListFlightAuthorizations200ResponseBuilder() {
    ListFlightAuthorizations200Response._defaults(this);
  }

  ListFlightAuthorizations200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorizations = $v.authorizations?.toBuilder();
      _total = $v.total;
      _page = $v.page;
      _limit = $v.limit;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListFlightAuthorizations200Response other) {
    _$v = other as _$ListFlightAuthorizations200Response;
  }

  @override
  void update(
      void Function(ListFlightAuthorizations200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListFlightAuthorizations200Response build() => _build();

  _$ListFlightAuthorizations200Response _build() {
    _$ListFlightAuthorizations200Response _$result;
    try {
      _$result = _$v ??
          _$ListFlightAuthorizations200Response._(
            authorizations: _authorizations?.build(),
            total: total,
            page: page,
            limit: limit,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'authorizations';
        _authorizations?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'ListFlightAuthorizations200Response',
            _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

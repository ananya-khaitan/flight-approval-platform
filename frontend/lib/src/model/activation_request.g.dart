// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activation_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ActivationRequest extends ActivationRequest {
  @override
  final bool confirmationTermsAccepted;
  @override
  final Position3D? actualStartPosition;
  @override
  final DateTime? estimatedStartTime;

  factory _$ActivationRequest(
          [void Function(ActivationRequestBuilder)? updates]) =>
      (ActivationRequestBuilder()..update(updates))._build();

  _$ActivationRequest._(
      {required this.confirmationTermsAccepted,
      this.actualStartPosition,
      this.estimatedStartTime})
      : super._();
  @override
  ActivationRequest rebuild(void Function(ActivationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivationRequestBuilder toBuilder() =>
      ActivationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivationRequest &&
        confirmationTermsAccepted == other.confirmationTermsAccepted &&
        actualStartPosition == other.actualStartPosition &&
        estimatedStartTime == other.estimatedStartTime;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, confirmationTermsAccepted.hashCode);
    _$hash = $jc(_$hash, actualStartPosition.hashCode);
    _$hash = $jc(_$hash, estimatedStartTime.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ActivationRequest')
          ..add('confirmationTermsAccepted', confirmationTermsAccepted)
          ..add('actualStartPosition', actualStartPosition)
          ..add('estimatedStartTime', estimatedStartTime))
        .toString();
  }
}

class ActivationRequestBuilder
    implements Builder<ActivationRequest, ActivationRequestBuilder> {
  _$ActivationRequest? _$v;

  bool? _confirmationTermsAccepted;
  bool? get confirmationTermsAccepted => _$this._confirmationTermsAccepted;
  set confirmationTermsAccepted(bool? confirmationTermsAccepted) =>
      _$this._confirmationTermsAccepted = confirmationTermsAccepted;

  Position3DBuilder? _actualStartPosition;
  Position3DBuilder get actualStartPosition =>
      _$this._actualStartPosition ??= Position3DBuilder();
  set actualStartPosition(Position3DBuilder? actualStartPosition) =>
      _$this._actualStartPosition = actualStartPosition;

  DateTime? _estimatedStartTime;
  DateTime? get estimatedStartTime => _$this._estimatedStartTime;
  set estimatedStartTime(DateTime? estimatedStartTime) =>
      _$this._estimatedStartTime = estimatedStartTime;

  ActivationRequestBuilder() {
    ActivationRequest._defaults(this);
  }

  ActivationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _confirmationTermsAccepted = $v.confirmationTermsAccepted;
      _actualStartPosition = $v.actualStartPosition?.toBuilder();
      _estimatedStartTime = $v.estimatedStartTime;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ActivationRequest other) {
    _$v = other as _$ActivationRequest;
  }

  @override
  void update(void Function(ActivationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivationRequest build() => _build();

  _$ActivationRequest _build() {
    _$ActivationRequest _$result;
    try {
      _$result = _$v ??
          _$ActivationRequest._(
            confirmationTermsAccepted: BuiltValueNullFieldError.checkNotNull(
                confirmationTermsAccepted,
                r'ActivationRequest',
                'confirmationTermsAccepted'),
            actualStartPosition: _actualStartPosition?.build(),
            estimatedStartTime: estimatedStartTime,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'actualStartPosition';
        _actualStartPosition?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ActivationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

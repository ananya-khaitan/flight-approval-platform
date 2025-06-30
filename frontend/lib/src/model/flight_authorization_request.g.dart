// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flight_authorization_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FlightAuthorizationRequestOperationModeEnum
    _$flightAuthorizationRequestOperationModeEnum_VLOS =
    const FlightAuthorizationRequestOperationModeEnum._('VLOS');
const FlightAuthorizationRequestOperationModeEnum
    _$flightAuthorizationRequestOperationModeEnum_bVLOSWithObservers =
    const FlightAuthorizationRequestOperationModeEnum._('bVLOSWithObservers');
const FlightAuthorizationRequestOperationModeEnum
    _$flightAuthorizationRequestOperationModeEnum_bVLOSAutomated =
    const FlightAuthorizationRequestOperationModeEnum._('bVLOSAutomated');

FlightAuthorizationRequestOperationModeEnum
    _$flightAuthorizationRequestOperationModeEnumValueOf(String name) {
  switch (name) {
    case 'VLOS':
      return _$flightAuthorizationRequestOperationModeEnum_VLOS;
    case 'bVLOSWithObservers':
      return _$flightAuthorizationRequestOperationModeEnum_bVLOSWithObservers;
    case 'bVLOSAutomated':
      return _$flightAuthorizationRequestOperationModeEnum_bVLOSAutomated;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationRequestOperationModeEnum>
    _$flightAuthorizationRequestOperationModeEnumValues = BuiltSet<
        FlightAuthorizationRequestOperationModeEnum>(const <FlightAuthorizationRequestOperationModeEnum>[
  _$flightAuthorizationRequestOperationModeEnum_VLOS,
  _$flightAuthorizationRequestOperationModeEnum_bVLOSWithObservers,
  _$flightAuthorizationRequestOperationModeEnum_bVLOSAutomated,
]);

const FlightAuthorizationRequestFlightTypeEnum
    _$flightAuthorizationRequestFlightTypeEnum_normal =
    const FlightAuthorizationRequestFlightTypeEnum._('normal');
const FlightAuthorizationRequestFlightTypeEnum
    _$flightAuthorizationRequestFlightTypeEnum_specialOperations =
    const FlightAuthorizationRequestFlightTypeEnum._('specialOperations');

FlightAuthorizationRequestFlightTypeEnum
    _$flightAuthorizationRequestFlightTypeEnumValueOf(String name) {
  switch (name) {
    case 'normal':
      return _$flightAuthorizationRequestFlightTypeEnum_normal;
    case 'specialOperations':
      return _$flightAuthorizationRequestFlightTypeEnum_specialOperations;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FlightAuthorizationRequestFlightTypeEnum>
    _$flightAuthorizationRequestFlightTypeEnumValues = BuiltSet<
        FlightAuthorizationRequestFlightTypeEnum>(const <FlightAuthorizationRequestFlightTypeEnum>[
  _$flightAuthorizationRequestFlightTypeEnum_normal,
  _$flightAuthorizationRequestFlightTypeEnum_specialOperations,
]);

Serializer<FlightAuthorizationRequestOperationModeEnum>
    _$flightAuthorizationRequestOperationModeEnumSerializer =
    _$FlightAuthorizationRequestOperationModeEnumSerializer();
Serializer<FlightAuthorizationRequestFlightTypeEnum>
    _$flightAuthorizationRequestFlightTypeEnumSerializer =
    _$FlightAuthorizationRequestFlightTypeEnumSerializer();

class _$FlightAuthorizationRequestOperationModeEnumSerializer
    implements
        PrimitiveSerializer<FlightAuthorizationRequestOperationModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'VLOS': 'VLOS',
    'bVLOSWithObservers': 'BVLOS_with_observers',
    'bVLOSAutomated': 'BVLOS_automated',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'VLOS': 'VLOS',
    'BVLOS_with_observers': 'bVLOSWithObservers',
    'BVLOS_automated': 'bVLOSAutomated',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationRequestOperationModeEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationRequestOperationModeEnum';

  @override
  Object serialize(Serializers serializers,
          FlightAuthorizationRequestOperationModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationRequestOperationModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationRequestOperationModeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationRequestFlightTypeEnumSerializer
    implements PrimitiveSerializer<FlightAuthorizationRequestFlightTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'normal': 'normal',
    'specialOperations': 'special_operations',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'normal': 'normal',
    'special_operations': 'specialOperations',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FlightAuthorizationRequestFlightTypeEnum
  ];
  @override
  final String wireName = 'FlightAuthorizationRequestFlightTypeEnum';

  @override
  Object serialize(Serializers serializers,
          FlightAuthorizationRequestFlightTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FlightAuthorizationRequestFlightTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FlightAuthorizationRequestFlightTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FlightAuthorizationRequest extends FlightAuthorizationRequest {
  @override
  final String uasRegistrationNumber;
  @override
  final String operatorId;
  @override
  final FlightTrajectory4D flightTrajectory;
  @override
  final FlightAuthorizationRequestOperationModeEnum operationMode;
  @override
  final FlightAuthorizationRequestFlightTypeEnum flightType;
  @override
  final DateTime plannedStartTime;
  @override
  final DateTime plannedEndTime;
  @override
  final BuiltList<ContingencyProcedure>? contingencyProcedures;
  @override
  final WeatherRequirements? weatherRequirements;
  @override
  final String? additionalInformation;

  factory _$FlightAuthorizationRequest(
          [void Function(FlightAuthorizationRequestBuilder)? updates]) =>
      (FlightAuthorizationRequestBuilder()..update(updates))._build();

  _$FlightAuthorizationRequest._(
      {required this.uasRegistrationNumber,
      required this.operatorId,
      required this.flightTrajectory,
      required this.operationMode,
      required this.flightType,
      required this.plannedStartTime,
      required this.plannedEndTime,
      this.contingencyProcedures,
      this.weatherRequirements,
      this.additionalInformation})
      : super._();
  @override
  FlightAuthorizationRequest rebuild(
          void Function(FlightAuthorizationRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FlightAuthorizationRequestBuilder toBuilder() =>
      FlightAuthorizationRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FlightAuthorizationRequest &&
        uasRegistrationNumber == other.uasRegistrationNumber &&
        operatorId == other.operatorId &&
        flightTrajectory == other.flightTrajectory &&
        operationMode == other.operationMode &&
        flightType == other.flightType &&
        plannedStartTime == other.plannedStartTime &&
        plannedEndTime == other.plannedEndTime &&
        contingencyProcedures == other.contingencyProcedures &&
        weatherRequirements == other.weatherRequirements &&
        additionalInformation == other.additionalInformation;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uasRegistrationNumber.hashCode);
    _$hash = $jc(_$hash, operatorId.hashCode);
    _$hash = $jc(_$hash, flightTrajectory.hashCode);
    _$hash = $jc(_$hash, operationMode.hashCode);
    _$hash = $jc(_$hash, flightType.hashCode);
    _$hash = $jc(_$hash, plannedStartTime.hashCode);
    _$hash = $jc(_$hash, plannedEndTime.hashCode);
    _$hash = $jc(_$hash, contingencyProcedures.hashCode);
    _$hash = $jc(_$hash, weatherRequirements.hashCode);
    _$hash = $jc(_$hash, additionalInformation.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FlightAuthorizationRequest')
          ..add('uasRegistrationNumber', uasRegistrationNumber)
          ..add('operatorId', operatorId)
          ..add('flightTrajectory', flightTrajectory)
          ..add('operationMode', operationMode)
          ..add('flightType', flightType)
          ..add('plannedStartTime', plannedStartTime)
          ..add('plannedEndTime', plannedEndTime)
          ..add('contingencyProcedures', contingencyProcedures)
          ..add('weatherRequirements', weatherRequirements)
          ..add('additionalInformation', additionalInformation))
        .toString();
  }
}

class FlightAuthorizationRequestBuilder
    implements
        Builder<FlightAuthorizationRequest, FlightAuthorizationRequestBuilder> {
  _$FlightAuthorizationRequest? _$v;

  String? _uasRegistrationNumber;
  String? get uasRegistrationNumber => _$this._uasRegistrationNumber;
  set uasRegistrationNumber(String? uasRegistrationNumber) =>
      _$this._uasRegistrationNumber = uasRegistrationNumber;

  String? _operatorId;
  String? get operatorId => _$this._operatorId;
  set operatorId(String? operatorId) => _$this._operatorId = operatorId;

  FlightTrajectory4DBuilder? _flightTrajectory;
  FlightTrajectory4DBuilder get flightTrajectory =>
      _$this._flightTrajectory ??= FlightTrajectory4DBuilder();
  set flightTrajectory(FlightTrajectory4DBuilder? flightTrajectory) =>
      _$this._flightTrajectory = flightTrajectory;

  FlightAuthorizationRequestOperationModeEnum? _operationMode;
  FlightAuthorizationRequestOperationModeEnum? get operationMode =>
      _$this._operationMode;
  set operationMode(
          FlightAuthorizationRequestOperationModeEnum? operationMode) =>
      _$this._operationMode = operationMode;

  FlightAuthorizationRequestFlightTypeEnum? _flightType;
  FlightAuthorizationRequestFlightTypeEnum? get flightType =>
      _$this._flightType;
  set flightType(FlightAuthorizationRequestFlightTypeEnum? flightType) =>
      _$this._flightType = flightType;

  DateTime? _plannedStartTime;
  DateTime? get plannedStartTime => _$this._plannedStartTime;
  set plannedStartTime(DateTime? plannedStartTime) =>
      _$this._plannedStartTime = plannedStartTime;

  DateTime? _plannedEndTime;
  DateTime? get plannedEndTime => _$this._plannedEndTime;
  set plannedEndTime(DateTime? plannedEndTime) =>
      _$this._plannedEndTime = plannedEndTime;

  ListBuilder<ContingencyProcedure>? _contingencyProcedures;
  ListBuilder<ContingencyProcedure> get contingencyProcedures =>
      _$this._contingencyProcedures ??= ListBuilder<ContingencyProcedure>();
  set contingencyProcedures(
          ListBuilder<ContingencyProcedure>? contingencyProcedures) =>
      _$this._contingencyProcedures = contingencyProcedures;

  WeatherRequirementsBuilder? _weatherRequirements;
  WeatherRequirementsBuilder get weatherRequirements =>
      _$this._weatherRequirements ??= WeatherRequirementsBuilder();
  set weatherRequirements(WeatherRequirementsBuilder? weatherRequirements) =>
      _$this._weatherRequirements = weatherRequirements;

  String? _additionalInformation;
  String? get additionalInformation => _$this._additionalInformation;
  set additionalInformation(String? additionalInformation) =>
      _$this._additionalInformation = additionalInformation;

  FlightAuthorizationRequestBuilder() {
    FlightAuthorizationRequest._defaults(this);
  }

  FlightAuthorizationRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uasRegistrationNumber = $v.uasRegistrationNumber;
      _operatorId = $v.operatorId;
      _flightTrajectory = $v.flightTrajectory.toBuilder();
      _operationMode = $v.operationMode;
      _flightType = $v.flightType;
      _plannedStartTime = $v.plannedStartTime;
      _plannedEndTime = $v.plannedEndTime;
      _contingencyProcedures = $v.contingencyProcedures?.toBuilder();
      _weatherRequirements = $v.weatherRequirements?.toBuilder();
      _additionalInformation = $v.additionalInformation;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FlightAuthorizationRequest other) {
    _$v = other as _$FlightAuthorizationRequest;
  }

  @override
  void update(void Function(FlightAuthorizationRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FlightAuthorizationRequest build() => _build();

  _$FlightAuthorizationRequest _build() {
    _$FlightAuthorizationRequest _$result;
    try {
      _$result = _$v ??
          _$FlightAuthorizationRequest._(
            uasRegistrationNumber: BuiltValueNullFieldError.checkNotNull(
                uasRegistrationNumber,
                r'FlightAuthorizationRequest',
                'uasRegistrationNumber'),
            operatorId: BuiltValueNullFieldError.checkNotNull(
                operatorId, r'FlightAuthorizationRequest', 'operatorId'),
            flightTrajectory: flightTrajectory.build(),
            operationMode: BuiltValueNullFieldError.checkNotNull(
                operationMode, r'FlightAuthorizationRequest', 'operationMode'),
            flightType: BuiltValueNullFieldError.checkNotNull(
                flightType, r'FlightAuthorizationRequest', 'flightType'),
            plannedStartTime: BuiltValueNullFieldError.checkNotNull(
                plannedStartTime,
                r'FlightAuthorizationRequest',
                'plannedStartTime'),
            plannedEndTime: BuiltValueNullFieldError.checkNotNull(
                plannedEndTime,
                r'FlightAuthorizationRequest',
                'plannedEndTime'),
            contingencyProcedures: _contingencyProcedures?.build(),
            weatherRequirements: _weatherRequirements?.build(),
            additionalInformation: additionalInformation,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'flightTrajectory';
        flightTrajectory.build();

        _$failedField = 'contingencyProcedures';
        _contingencyProcedures?.build();
        _$failedField = 'weatherRequirements';
        _weatherRequirements?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FlightAuthorizationRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint

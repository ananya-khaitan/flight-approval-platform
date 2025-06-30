// lib/main.dart

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

// Generated API client
import 'package:app/src/api.dart';
import 'package:app/src/serializers.dart';

// Models
import 'package:app/src/model/flight_authorization_request.dart';
import 'package:app/src/model/flight_trajectory4_d.dart';
import 'package:app/src/model/trajectory_point4_d.dart';
import 'package:app/src/model/position3_d.dart';
import 'package:app/src/model/deviation_thresholds.dart';
import 'package:app/src/model/weather_requirements.dart';
import 'package:app/src/model/weather_requirements_temperature_range.dart';
import 'package:app/src/model/contingency_procedure.dart';
import 'package:built_collection/built_collection.dart';

void main() => runApp(const FlightApp());

class FlightApp extends StatelessWidget {
  const FlightApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flight Approval',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: const FlightForm(),
    );
  }
}

/// Returns true if the request is accepted, false if rejected,
/// appending any reasons to [reasons].
bool evaluateRequestLocally(
  FlightAuthorizationRequest req,
  List<String> reasons,
) {
  bool accepted = true;
  final weather = req.weatherRequirements;
  final traj = req.flightTrajectory;
  final thresholds = traj.deviationThresholds;
  final start = req.plannedStartTime;
  final end = req.plannedEndTime;

  // 1) Only 06:00–18:00 UTC
  if (start.hour < 6 || end.hour > 18) {
    reasons.add('Must fly 06:00–18:00 UTC');
    accepted = false;
  }

  // 2) Altitude 20–120m
  final alt = traj.trajectoryPoints.isNotEmpty
      ? traj.trajectoryPoints.first.position.altitude
      : null;
  if (alt == null || alt < 20 || alt > 120) {
    reasons.add('Altitude must be 20–120 m');
    accepted = false;
  }

  // 3) Latitude 40–41
  final lat = traj.trajectoryPoints.isNotEmpty
      ? traj.trajectoryPoints.first.position.latitude
      : null;
  if (lat == null || lat < 40.0 || lat > 41.0) {
    reasons.add('Latitude out of 40–41° range');
    accepted = false;
  }

  // 4) Wind speed
  if (weather?.maxWindSpeed != null && weather!.maxWindSpeed! > 50) {
    reasons.add('Wind speed too high');
    accepted = false;
  }

  // 5) Visibility
  if (weather?.minVisibility != null && weather!.minVisibility! < 2) {
    reasons.add('Visibility too low');
    accepted = false;
  }

  // 6) Temperature
  if (weather?.temperatureRange != null) {
    final range = weather!.temperatureRange!;
    if ((range.minTemperature != null && range.minTemperature! < -10) ||
        (range.maxTemperature != null && range.maxTemperature! > 45)) {
      reasons.add('Temperature out of −10°C…45°C');
      accepted = false;
    }
  }

  // 7) Temporal deviation
  if (thresholds.temporal > 300) {
    reasons.add('Temporal deviation > 300 s');
    accepted = false;
  }

  // 8) No past flights
  if (start.isBefore(DateTime.now().toUtc())) {
    reasons.add('Start time is in the past');
    accepted = false;
  }

  return accepted;
}

class FlightForm extends StatefulWidget {
  const FlightForm({super.key});
  @override
  State<FlightForm> createState() => _FlightFormState();
}

class _FlightFormState extends State<FlightForm> {
  final _formKey = GlobalKey<FormState>();

  // Top-level fields
  final _uasRegCtrl = TextEditingController();
  final _operatorCtrl = TextEditingController();

  FlightAuthorizationRequestOperationModeEnum? _opMode;
  FlightAuthorizationRequestFlightTypeEnum? _flightType;
  DateTime? _plannedStart;
  DateTime? _plannedEnd;

  // Trajectory fields
  final _latCtrl = TextEditingController();
  final _lonCtrl = TextEditingController();
  final _altCtrl = TextEditingController();
  Position3DAltitudeReferenceEnum? _altRef;
  DateTime? _trajTime;
  final _speedCtrl = TextEditingController();
  final _headingCtrl = TextEditingController();

  final _devHorizCtrl = TextEditingController();
  final _devVertCtrl = TextEditingController();
  final _routeDescCtrl = TextEditingController();
  final _devTemporalCtrl = TextEditingController();

  // Contingency
  final _contingencyCtrl = TextEditingController();

  // Weather
  final _maxWindCtrl = TextEditingController();
  final _minVisCtrl = TextEditingController();
  final _maxPrecipCtrl = TextEditingController();
  final _minTempCtrl = TextEditingController();
  final _maxTempCtrl = TextEditingController();

  bool _loading = false;
  String? _response;

  Future<void> _pickDateTime(bool isStart) async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date == null) return;
    final time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time == null) return;
    final dt =
        DateTime(date.year, date.month, date.day, time.hour, time.minute);
    setState(() {
      if (isStart)
        _plannedStart = dt;
      else
        _plannedEnd = dt;
    });
  }

  Future<void> _pickTrajTime() async {
    final date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 1)),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );
    if (date == null) return;
    final time =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (time == null) return;
    setState(() => _trajTime =
        DateTime(date.year, date.month, date.day, time.hour, time.minute));
  }

  Widget _buildDropdown<T>(
      String label, List<T> values, T? selected, void Function(T?) onChanged) {
    return DropdownButtonFormField<T>(
      decoration: InputDecoration(labelText: label),
      value: selected,
      items: values
          .map((v) => DropdownMenuItem(
              value: v, child: Text((v as dynamic).name ?? v.toString())))
          .toList(),
      onChanged: onChanged,
      validator: (v) => v == null ? 'Required' : null,
    );
  }

  Future<void> _submit() async {
    if (!_formKey.currentState!.validate() ||
        _opMode == null ||
        _flightType == null ||
        _plannedStart == null ||
        _plannedEnd == null ||
        _altRef == null ||
        _trajTime == null) return;

    // Build the FlightAuthorizationRequest first:
    final req = FlightAuthorizationRequest((b) => b
      ..uasRegistrationNumber = _uasRegCtrl.text
      ..operatorId = _operatorCtrl.text
      ..flightTrajectory.replace(FlightTrajectory4D((tb) => tb
        ..trajectoryPoints = ListBuilder([
          (TrajectoryPoint4DBuilder()
                ..position.replace(Position3D((pb) => pb
                  ..latitude = double.parse(_latCtrl.text)
                  ..longitude = double.parse(_lonCtrl.text)
                  ..altitude = double.parse(_altCtrl.text)
                  ..altitudeReference = _altRef!))
                ..time = _trajTime!.toUtc()
                ..speed = double.tryParse(_speedCtrl.text)
                ..heading = double.tryParse(_headingCtrl.text))
              .build()
        ])
        ..deviationThresholds.replace(DeviationThresholds((dtb) => dtb
          ..horizontal = double.parse(_devHorizCtrl.text)
          ..vertical = double.parse(_devVertCtrl.text)
          ..temporal = double.parse(_devTemporalCtrl.text)))
        ..routeDescription = _routeDescCtrl.text))
      ..operationMode = _opMode!
      ..flightType = _flightType!
      ..plannedStartTime = _plannedStart!.toUtc()
      ..plannedEndTime = _plannedEnd!.toUtc()
      ..contingencyProcedures.replace(BuiltList<ContingencyProcedure>())
      ..weatherRequirements.replace(WeatherRequirements((wb) => wb
        ..maxWindSpeed = double.tryParse(_maxWindCtrl.text)
        ..minVisibility = double.tryParse(_minVisCtrl.text)
        ..maxPrecipitation = double.tryParse(_maxPrecipCtrl.text)
        ..temperatureRange
            .replace(WeatherRequirementsTemperatureRange((trb) => trb
              ..minTemperature = double.tryParse(_minTempCtrl.text)
              ..maxTemperature = double.tryParse(_maxTempCtrl.text)))))
      ..additionalInformation = null);

    setState(() {
      _loading = true;
      _response = null;
    });

    // Local evaluation
    final rejectionReasons = <String>[];
    final accepted = evaluateRequestLocally(req, rejectionReasons);
    if (!accepted) {
      setState(() {
        _response = 'Rejected:\n' + rejectionReasons.join('\n');
        _loading = false;
      });
      return;
    }

    // If accepted locally, call backend
    try {
      final client =
          App(dio: Dio(BaseOptions(baseUrl: 'http://localhost:8080')));
      final api = client.getFlightAuthorizationApi();
      final res = await api.submitFlightAuthorizationRequest(
          flightAuthorizationRequest: req);

      setState(() => _response = (res.data?.status != null)
          ? (res.data!.status.name ?? res.data!.status.toString())
          : 'No status');
    } catch (e) {
      setState(() => _response = 'Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void dispose() {
    _uasRegCtrl.dispose();
    _operatorCtrl.dispose();
    _latCtrl.dispose();
    _lonCtrl.dispose();
    _altCtrl.dispose();
    _devTemporalCtrl.dispose();
    _speedCtrl.dispose();
    _headingCtrl.dispose();
    _devHorizCtrl.dispose();
    _devVertCtrl.dispose();
    _routeDescCtrl.dispose();
    _contingencyCtrl.dispose();
    _maxWindCtrl.dispose();
    _minVisCtrl.dispose();
    _maxPrecipCtrl.dispose();
    _minTempCtrl.dispose();
    _maxTempCtrl.dispose();
    super.dispose();
  }

  @override
  @override
  Widget build(BuildContext context) {
    // Constrain width on large screens:
    final maxWidth =
        MediaQuery.of(context).size.width > 800 ? 600.0 : double.infinity;

    return Scaffold(
      appBar: AppBar(title: const Text('Flight Authorization')),
      body: Center(
        child: Container(
          width: maxWidth,
          padding: const EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _sectionCard(
                    title: 'Flight Details',
                    children: [
                      _textField(_uasRegCtrl, 'UAS Registration #',
                          validator: true),
                      const SizedBox(height: 12),
                      _textField(_operatorCtrl, 'Operator ID', validator: true),
                      const SizedBox(height: 12),
                      _buildDropdown(
                        'Operation Mode',
                        FlightAuthorizationRequestOperationModeEnum.values
                            .toList(),
                        _opMode,
                        (v) => setState(() => _opMode = v),
                      ),
                      const SizedBox(height: 12),
                      _buildDropdown(
                        'Flight Type',
                        FlightAuthorizationRequestFlightTypeEnum.values
                            .toList(),
                        _flightType,
                        (v) => setState(() => _flightType = v),
                      ),
                      const SizedBox(height: 12),
                      _dateTimePicker('Start Time', _plannedStart,
                          () => _pickDateTime(true)),
                      const SizedBox(height: 8),
                      _dateTimePicker(
                          'End Time', _plannedEnd, () => _pickDateTime(false)),
                    ],
                  ),
                  _sectionCard(
                    title: 'Trajectory Point',
                    children: [
                      _textField(_latCtrl, 'Latitude',
                          keyboard: TextInputType.number, validator: true),
                      const SizedBox(height: 12),
                      _textField(_lonCtrl, 'Longitude',
                          keyboard: TextInputType.number, validator: true),
                      const SizedBox(height: 12),
                      _textField(_altCtrl, 'Altitude',
                          keyboard: TextInputType.number, validator: true),
                      const SizedBox(height: 12),
                      _buildDropdown(
                        'Altitude Reference',
                        Position3DAltitudeReferenceEnum.values.toList(),
                        _altRef,
                        (v) => setState(() => _altRef = v),
                      ),
                      const SizedBox(height: 12),
                      _dateTimePicker(
                          'Trajectory Time', _trajTime, _pickTrajTime),
                      const SizedBox(height: 12),
                      _textField(_speedCtrl, 'Speed (m/s)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_headingCtrl, 'Heading (°)',
                          keyboard: TextInputType.number),
                    ],
                  ),
                  _sectionCard(
                    title: 'Deviation Thresholds',
                    children: [
                      _textField(_devHorizCtrl, 'Horizontal (m)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_devVertCtrl, 'Vertical (m)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_devTemporalCtrl, 'Temporal (s)',
                          keyboard: TextInputType.number, validator: true),
                      const SizedBox(height: 12),
                      _textField(_routeDescCtrl, 'Route Description'),
                    ],
                  ),
                  _sectionCard(
                    title: 'Contingency',
                    children: [
                      _textField(_contingencyCtrl, 'Procedure Description'),
                    ],
                  ),
                  _sectionCard(
                    title: 'Weather Requirements',
                    children: [
                      _textField(_maxWindCtrl, 'Max Wind Speed (m/s)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_minVisCtrl, 'Min Visibility (m)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_maxPrecipCtrl, 'Max Precipitation (mm/h)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_minTempCtrl, 'Min Temp (°C)',
                          keyboard: TextInputType.number),
                      const SizedBox(height: 12),
                      _textField(_maxTempCtrl, 'Max Temp (°C)',
                          keyboard: TextInputType.number),
                    ],
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: _loading ? null : _submit,
                    child: Text(_loading ? 'Submitting…' : 'Submit'),
                  ),
                  if (_response != null) ...[
                    const SizedBox(height: 16),
                    Text(
                      _response!,
                      style: TextStyle(
                        color: _response!.startsWith('Rejected')
                            ? Colors.red
                            : Colors.green,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _sectionCard({required String title, required List<Widget> children}) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo)),
            const Divider(thickness: 1),
            ...children
          ],
        ),
      ),
    );
  }

  Widget _textField(
    TextEditingController ctrl,
    String label, {
    TextInputType keyboard = TextInputType.text,
    bool validator = false,
  }) {
    return TextFormField(
      controller: ctrl,
      decoration: InputDecoration(labelText: label),
      keyboardType: keyboard,
      validator: validator ? (v) => v!.isEmpty ? 'Required' : null : null,
    );
  }

  Widget _dateTimePicker(String label, DateTime? value, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      child: InputDecorator(
        decoration: InputDecoration(labelText: label),
        child: Text(
          value == null ? 'Select…' : value.toLocal().toString(),
          style: TextStyle(color: value == null ? Colors.grey[600] : null),
        ),
      ),
    );
  }
}

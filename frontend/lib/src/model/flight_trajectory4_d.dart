//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/deviation_thresholds.dart';
import 'package:app/src/model/trajectory_point4_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_trajectory4_d.g.dart';

/// FlightTrajectory4D
///
/// Properties:
/// * [trajectoryPoints] 
/// * [deviationThresholds] 
/// * [routeDescription] - Human-readable route description
@BuiltValue()
abstract class FlightTrajectory4D implements Built<FlightTrajectory4D, FlightTrajectory4DBuilder> {
  @BuiltValueField(wireName: r'trajectory_points')
  BuiltList<TrajectoryPoint4D> get trajectoryPoints;

  @BuiltValueField(wireName: r'deviation_thresholds')
  DeviationThresholds get deviationThresholds;

  /// Human-readable route description
  @BuiltValueField(wireName: r'route_description')
  String? get routeDescription;

  FlightTrajectory4D._();

  factory FlightTrajectory4D([void updates(FlightTrajectory4DBuilder b)]) = _$FlightTrajectory4D;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlightTrajectory4DBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightTrajectory4D> get serializer => _$FlightTrajectory4DSerializer();
}

class _$FlightTrajectory4DSerializer implements PrimitiveSerializer<FlightTrajectory4D> {
  @override
  final Iterable<Type> types = const [FlightTrajectory4D, _$FlightTrajectory4D];

  @override
  final String wireName = r'FlightTrajectory4D';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightTrajectory4D object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'trajectory_points';
    yield serializers.serialize(
      object.trajectoryPoints,
      specifiedType: const FullType(BuiltList, [FullType(TrajectoryPoint4D)]),
    );
    yield r'deviation_thresholds';
    yield serializers.serialize(
      object.deviationThresholds,
      specifiedType: const FullType(DeviationThresholds),
    );
    if (object.routeDescription != null) {
      yield r'route_description';
      yield serializers.serialize(
        object.routeDescription,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightTrajectory4D object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightTrajectory4DBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'trajectory_points':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(TrajectoryPoint4D)]),
          ) as BuiltList<TrajectoryPoint4D>;
          result.trajectoryPoints.replace(valueDes);
          break;
        case r'deviation_thresholds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DeviationThresholds),
          ) as DeviationThresholds;
          result.deviationThresholds.replace(valueDes);
          break;
        case r'route_description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.routeDescription = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlightTrajectory4D deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlightTrajectory4DBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}


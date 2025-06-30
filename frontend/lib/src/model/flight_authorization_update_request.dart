//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/flight_trajectory4_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'flight_authorization_update_request.g.dart';

/// FlightAuthorizationUpdateRequest
///
/// Properties:
/// * [newTrajectory] 
/// * [newStartTime] 
/// * [newEndTime] 
/// * [updateReason] 
@BuiltValue()
abstract class FlightAuthorizationUpdateRequest implements Built<FlightAuthorizationUpdateRequest, FlightAuthorizationUpdateRequestBuilder> {
  @BuiltValueField(wireName: r'new_trajectory')
  FlightTrajectory4D? get newTrajectory;

  @BuiltValueField(wireName: r'new_start_time')
  DateTime? get newStartTime;

  @BuiltValueField(wireName: r'new_end_time')
  DateTime? get newEndTime;

  @BuiltValueField(wireName: r'update_reason')
  String? get updateReason;

  FlightAuthorizationUpdateRequest._();

  factory FlightAuthorizationUpdateRequest([void updates(FlightAuthorizationUpdateRequestBuilder b)]) = _$FlightAuthorizationUpdateRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FlightAuthorizationUpdateRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FlightAuthorizationUpdateRequest> get serializer => _$FlightAuthorizationUpdateRequestSerializer();
}

class _$FlightAuthorizationUpdateRequestSerializer implements PrimitiveSerializer<FlightAuthorizationUpdateRequest> {
  @override
  final Iterable<Type> types = const [FlightAuthorizationUpdateRequest, _$FlightAuthorizationUpdateRequest];

  @override
  final String wireName = r'FlightAuthorizationUpdateRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FlightAuthorizationUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.newTrajectory != null) {
      yield r'new_trajectory';
      yield serializers.serialize(
        object.newTrajectory,
        specifiedType: const FullType(FlightTrajectory4D),
      );
    }
    if (object.newStartTime != null) {
      yield r'new_start_time';
      yield serializers.serialize(
        object.newStartTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.newEndTime != null) {
      yield r'new_end_time';
      yield serializers.serialize(
        object.newEndTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.updateReason != null) {
      yield r'update_reason';
      yield serializers.serialize(
        object.updateReason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FlightAuthorizationUpdateRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FlightAuthorizationUpdateRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'new_trajectory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightTrajectory4D),
          ) as FlightTrajectory4D;
          result.newTrajectory.replace(valueDes);
          break;
        case r'new_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.newStartTime = valueDes;
          break;
        case r'new_end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.newEndTime = valueDes;
          break;
        case r'update_reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.updateReason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FlightAuthorizationUpdateRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FlightAuthorizationUpdateRequestBuilder();
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


//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:app/src/model/flight_trajectory4_d.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'alternative_authorization.g.dart';

/// AlternativeAuthorization
///
/// Properties:
/// * [suggestedStartTime] 
/// * [suggestedTrajectory] 
/// * [reason] - Reason for suggesting alternative
@BuiltValue()
abstract class AlternativeAuthorization implements Built<AlternativeAuthorization, AlternativeAuthorizationBuilder> {
  @BuiltValueField(wireName: r'suggested_start_time')
  DateTime? get suggestedStartTime;

  @BuiltValueField(wireName: r'suggested_trajectory')
  FlightTrajectory4D? get suggestedTrajectory;

  /// Reason for suggesting alternative
  @BuiltValueField(wireName: r'reason')
  String? get reason;

  AlternativeAuthorization._();

  factory AlternativeAuthorization([void updates(AlternativeAuthorizationBuilder b)]) = _$AlternativeAuthorization;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(AlternativeAuthorizationBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<AlternativeAuthorization> get serializer => _$AlternativeAuthorizationSerializer();
}

class _$AlternativeAuthorizationSerializer implements PrimitiveSerializer<AlternativeAuthorization> {
  @override
  final Iterable<Type> types = const [AlternativeAuthorization, _$AlternativeAuthorization];

  @override
  final String wireName = r'AlternativeAuthorization';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    AlternativeAuthorization object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.suggestedStartTime != null) {
      yield r'suggested_start_time';
      yield serializers.serialize(
        object.suggestedStartTime,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.suggestedTrajectory != null) {
      yield r'suggested_trajectory';
      yield serializers.serialize(
        object.suggestedTrajectory,
        specifiedType: const FullType(FlightTrajectory4D),
      );
    }
    if (object.reason != null) {
      yield r'reason';
      yield serializers.serialize(
        object.reason,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    AlternativeAuthorization object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required AlternativeAuthorizationBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'suggested_start_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.suggestedStartTime = valueDes;
          break;
        case r'suggested_trajectory':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FlightTrajectory4D),
          ) as FlightTrajectory4D;
          result.suggestedTrajectory.replace(valueDes);
          break;
        case r'reason':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.reason = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  AlternativeAuthorization deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = AlternativeAuthorizationBuilder();
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


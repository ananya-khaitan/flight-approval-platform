//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'end_flight_authorization200_response.g.dart';

/// EndFlightAuthorization200Response
///
/// Properties:
/// * [message] 
/// * [endTime] 
@BuiltValue()
abstract class EndFlightAuthorization200Response implements Built<EndFlightAuthorization200Response, EndFlightAuthorization200ResponseBuilder> {
  @BuiltValueField(wireName: r'message')
  String? get message;

  @BuiltValueField(wireName: r'end_time')
  DateTime? get endTime;

  EndFlightAuthorization200Response._();

  factory EndFlightAuthorization200Response([void updates(EndFlightAuthorization200ResponseBuilder b)]) = _$EndFlightAuthorization200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EndFlightAuthorization200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EndFlightAuthorization200Response> get serializer => _$EndFlightAuthorization200ResponseSerializer();
}

class _$EndFlightAuthorization200ResponseSerializer implements PrimitiveSerializer<EndFlightAuthorization200Response> {
  @override
  final Iterable<Type> types = const [EndFlightAuthorization200Response, _$EndFlightAuthorization200Response];

  @override
  final String wireName = r'EndFlightAuthorization200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EndFlightAuthorization200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.message != null) {
      yield r'message';
      yield serializers.serialize(
        object.message,
        specifiedType: const FullType(String),
      );
    }
    if (object.endTime != null) {
      yield r'end_time';
      yield serializers.serialize(
        object.endTime,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EndFlightAuthorization200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EndFlightAuthorization200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'end_time':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.endTime = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EndFlightAuthorization200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EndFlightAuthorization200ResponseBuilder();
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


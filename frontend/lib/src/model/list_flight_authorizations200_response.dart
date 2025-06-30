//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:app/src/model/flight_authorization_summary.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_flight_authorizations200_response.g.dart';

/// ListFlightAuthorizations200Response
///
/// Properties:
/// * [authorizations] 
/// * [total] 
/// * [page] 
/// * [limit] 
@BuiltValue()
abstract class ListFlightAuthorizations200Response implements Built<ListFlightAuthorizations200Response, ListFlightAuthorizations200ResponseBuilder> {
  @BuiltValueField(wireName: r'authorizations')
  BuiltList<FlightAuthorizationSummary>? get authorizations;

  @BuiltValueField(wireName: r'total')
  int? get total;

  @BuiltValueField(wireName: r'page')
  int? get page;

  @BuiltValueField(wireName: r'limit')
  int? get limit;

  ListFlightAuthorizations200Response._();

  factory ListFlightAuthorizations200Response([void updates(ListFlightAuthorizations200ResponseBuilder b)]) = _$ListFlightAuthorizations200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListFlightAuthorizations200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListFlightAuthorizations200Response> get serializer => _$ListFlightAuthorizations200ResponseSerializer();
}

class _$ListFlightAuthorizations200ResponseSerializer implements PrimitiveSerializer<ListFlightAuthorizations200Response> {
  @override
  final Iterable<Type> types = const [ListFlightAuthorizations200Response, _$ListFlightAuthorizations200Response];

  @override
  final String wireName = r'ListFlightAuthorizations200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListFlightAuthorizations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.authorizations != null) {
      yield r'authorizations';
      yield serializers.serialize(
        object.authorizations,
        specifiedType: const FullType(BuiltList, [FullType(FlightAuthorizationSummary)]),
      );
    }
    if (object.total != null) {
      yield r'total';
      yield serializers.serialize(
        object.total,
        specifiedType: const FullType(int),
      );
    }
    if (object.page != null) {
      yield r'page';
      yield serializers.serialize(
        object.page,
        specifiedType: const FullType(int),
      );
    }
    if (object.limit != null) {
      yield r'limit';
      yield serializers.serialize(
        object.limit,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListFlightAuthorizations200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListFlightAuthorizations200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'authorizations':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FlightAuthorizationSummary)]),
          ) as BuiltList<FlightAuthorizationSummary>;
          result.authorizations.replace(valueDes);
          break;
        case r'total':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.total = valueDes;
          break;
        case r'page':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.page = valueDes;
          break;
        case r'limit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.limit = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListFlightAuthorizations200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListFlightAuthorizations200ResponseBuilder();
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


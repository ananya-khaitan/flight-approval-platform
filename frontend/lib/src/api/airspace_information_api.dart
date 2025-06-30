//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:app/src/api_util.dart';
import 'package:app/src/model/get_airspace_restrictions200_response.dart';

class AirspaceInformationApi {

  final Dio _dio;

  final Serializers _serializers;

  const AirspaceInformationApi(this._dio, this._serializers);

  /// Get Current Airspace Restrictions
  /// Retrieve current airspace restrictions and temporary limitations  according to Article 10(7). 
  ///
  /// Parameters:
  /// * [area] - Geographic bounding box (minLat,minLon,maxLat,maxLon)
  /// * [timeFrom] - Start time for temporal restrictions (ISO 8601)
  /// * [timeTo] - End time for temporal restrictions (ISO 8601)
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetAirspaceRestrictions200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetAirspaceRestrictions200Response>> getAirspaceRestrictions({ 
    String? area,
    DateTime? timeFrom,
    DateTime? timeTo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/airspace-restrictions';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-Key',
            'where': 'header',
          },{
            'type': 'http',
            'scheme': 'bearer',
            'name': 'bearerAuth',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (area != null) r'area': encodeQueryParameter(_serializers, area, const FullType(String)),
      if (timeFrom != null) r'time_from': encodeQueryParameter(_serializers, timeFrom, const FullType(DateTime)),
      if (timeTo != null) r'time_to': encodeQueryParameter(_serializers, timeTo, const FullType(DateTime)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetAirspaceRestrictions200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(GetAirspaceRestrictions200Response),
      ) as GetAirspaceRestrictions200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetAirspaceRestrictions200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}

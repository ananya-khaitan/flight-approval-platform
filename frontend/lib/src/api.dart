//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:app/src/serializers.dart';
import 'package:app/src/auth/api_key_auth.dart';
import 'package:app/src/auth/basic_auth.dart';
import 'package:app/src/auth/bearer_auth.dart';
import 'package:app/src/auth/oauth.dart';
import 'package:app/src/api/airspace_information_api.dart';
import 'package:app/src/api/flight_activation_api.dart';
import 'package:app/src/api/flight_authorization_api.dart';
import 'package:app/src/api/weather_information_api.dart';

class App {
  static const String basePath = r'https://api.ussp-provider.com/v1';

  final Dio dio;
  final Serializers serializers;

  App({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AirspaceInformationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AirspaceInformationApi getAirspaceInformationApi() {
    return AirspaceInformationApi(dio, serializers);
  }

  /// Get FlightActivationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlightActivationApi getFlightActivationApi() {
    return FlightActivationApi(dio, serializers);
  }

  /// Get FlightAuthorizationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FlightAuthorizationApi getFlightAuthorizationApi() {
    return FlightAuthorizationApi(dio, serializers);
  }

  /// Get WeatherInformationApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WeatherInformationApi getWeatherInformationApi() {
    return WeatherInformationApi(dio, serializers);
  }
}

import 'dart:io';

import 'package:dio/dio.dart';

import '../../core/utils/logger.dart';
import '../models/exception/exception.dart';

abstract class NetworkPlugin {
  void setAuthToken(String? authorization);

  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });

  Future<Response> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  });
}

class NetworkPluginImpl implements NetworkPlugin {
  final Dio _dio;

  NetworkPluginImpl(this._dio, String baseUrl) {
    _dio.options.baseUrl = baseUrl;
    _dio.options.contentType = Headers.jsonContentType;
    _dio.options.responseType = ResponseType.json;
  }

  @override
  Future<Response> get({
    required String path,
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dio.get(
        path,
        queryParameters: queryParameters,
      );
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<Response> post({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.post(
        path,
        queryParameters: queryParameters,
        data: body,
      );

      if (response.statusCode != null && response.statusCode! < 300) {
        Logger.print(response.data, name: 'NetworkPlugin');
        return response;
      }

      throw ApiServerException.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<Response> put({
    required String path,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? body,
  }) async {
    try {
      final response = await _dio.put(
        path,
        queryParameters: queryParameters,
        data: body,
      );

      if (response.statusCode != null && response.statusCode! < 300) {
        Logger.print(response.data, name: 'NetworkPlugin');
        return response;
      }

      throw ApiServerException.fromJson(response.data);
    } catch (error) {
      rethrow;
    }
  }

  @override
  void setAuthToken(String? authorization) {
    Logger.print('Set Authorization token: $authorization');
    if (authorization == null) {
      _dio.options.headers.remove(HttpHeaders.authorizationHeader);
      return;
    }
    _dio.options.headers[HttpHeaders.authorizationHeader] =
        'Bearer $authorization';
  }
}

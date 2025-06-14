import 'package:cinema_app/src/core/base/api_routes.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class HttpServiceHelper with ChangeNotifier {
  static Duration requestDuration = const Duration(seconds: 300); // 5 mints

  static bool loggedOut = false;

  static BaseOptions options() {
    return BaseOptions(
      receiveTimeout: requestDuration,
      sendTimeout: requestDuration,
      connectTimeout: requestDuration,
      baseUrl: ApiRoutes.baseUrl,
      followRedirects: false,
      receiveDataWhenStatusError: false,
      validateStatus: (status) {
        return status! <= 500;
      },
      headers: {
        'Accept': "application/json",
      },
    );
  }

  static QueuedInterceptorsWrapper buildInterceptor() {
    return QueuedInterceptorsWrapper(
      onRequest: _onRequest,
      onResponse: _onResponse,
      onError: _onError,
    );
  }

  static void _onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    try {
      if (!options.headers.containsKey("Authorization")) {
        var token = ApiRoutes.appT;
        options.headers.addAll({
          'Authorization': 'Bearer $token',
        });
      }
    } finally {
      handler.next(options);
    }
  }

  static void _onError(DioException error, ErrorInterceptorHandler handler) async {
    return handler.next(error);
  }

  static void _onResponse(Response response, ResponseInterceptorHandler handler) async {
    handler.resolve(response);
  }

  static PrettyDioLogger buildPrettyDioLoggerInterceptor() {
    return PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      error: true,
      maxWidth: 140,
    );
  }


}

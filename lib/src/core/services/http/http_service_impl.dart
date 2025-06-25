import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'http_service.dart';
import 'http_service_helper.dart';

final httpServiceProvider = Provider<HttpService>((ref) => HttpServiceImpl());

class HttpServiceImpl implements HttpService {
  Dio dio = Dio();

  @override
  Future<void> init() async {
    dio.options = HttpServiceHelper.options();
    if (kDebugMode) {
      dio.interceptors.add(HttpServiceHelper.buildPrettyDioLoggerInterceptor());
    }
    dio.interceptors.add(HttpServiceHelper.buildInterceptor());
  }

  @override
  Future<Response?> get(String url, {Object? requestBody}) async {
    try {
      Response response = await dio.get(
        url,
        queryParameters: requestBody as Map<String, dynamic>?,
      );
      return response;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<Response?> post(String url, Object? requestBody) async {
    try {
      Response response = await dio.post(
        url,
        data: requestBody,
      );
      return response;
    } catch (e) {
      return null;
    }
  }
}

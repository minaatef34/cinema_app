import 'package:dio/dio.dart';

abstract class HttpService {
  Future<void> init();
  Future<Response> get(String url, {Object? requestBody});
  Future<Response> post(String url, Object? requestBody);
}

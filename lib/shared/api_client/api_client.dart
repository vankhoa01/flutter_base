import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../app_config/environment.dart';
import 'exceptions/exceptions.dart';

class ApiClient {
  static const String SUMMARY = '/summary';

  final Dio dio;

  ApiClient(this.dio) {
    dio.options.baseUrl = Environment.value.baseUrl!;
    dio.options.connectTimeout = const Duration(minutes: 3).inMilliseconds;
    dio.options.receiveTimeout = const Duration(minutes: 3).inMilliseconds;

    if (Environment.value.environmentType != EnvType.PRODUCTION) {
      dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: false,
        error: true,
        compact: true,
      ));
    }
  }

  Future<Response> post(
    String path,
    dynamic data,
  ) async {
    try {
      return await dio.post(path, data: data);
    } on DioError catch (e) {
      print(e);
      throw ApiException();
    }
  }

  Future<Response> put(String path, dynamic data) async {
    try {
      return await dio.put(path, data: data);
    } on DioError catch (e) {
      print(e);
      throw ApiException();
    }
  }

  Future<Response> delete(String path) async {
    try {
      return await dio.delete(path);
    } on DioError catch (e) {
      print(e);
      throw ApiException();
    }
  }

  Future<Response> get(String path) async {
    try {
      return await dio.get(path);
    } on DioError catch (e) {
      print(e);
      throw ApiException();
    }
  }
}

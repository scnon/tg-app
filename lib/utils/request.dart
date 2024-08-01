import 'package:dio/dio.dart';
import 'package:tg_shop_app/configs/environment.dart';
import 'package:tg_shop_app/models/response.g.dart';
import 'package:tg_shop_app/utils/logger.dart';

class Request {
  static late final Dio dio;

  static init() {
    dio = Dio(
      BaseOptions(
          baseUrl: Environment.config.baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
          headers: {'tenant-id': '1'}),
    );

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: onRequest,
      onResponse: onResponse,
      onError: (DioException e, handler) {
        Logger.d(e.error);
        return handler.next(e);
      },
    ));
  }

  static onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    return handler.next(options);
  }

  static onResponse(Response response, ResponseInterceptorHandler handler) {
    return handler.next(response);
  }

  static Future<Response> get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    return await dio.get(path, queryParameters: queryParameters);
  }

  static Future<Response> post(String path,
      {Map<String, dynamic>? data}) async {
    return dio.post(path, data: data, options: Options());
  }
}

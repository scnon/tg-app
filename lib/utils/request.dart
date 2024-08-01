import 'package:dio/dio.dart';
import 'package:tg_shop_app/configs/environment.dart';
import 'package:tg_shop_app/models/response.g.dart';
import 'package:tg_shop_app/utils/logger.dart';

class Request {
  static late final Dio _dio;

  static init() {
    _dio = Dio(
      BaseOptions(
          baseUrl: Environment.config.baseUrl,
          connectTimeout: const Duration(seconds: 5),
          receiveTimeout: const Duration(seconds: 5),
          headers: {'tenant-id': '1'}),
    );

    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        // Logger.request(options);
        return handler.next(options);
      },
      onResponse: (response, handler) {
        // Logger.response(response);
        return handler.next(response);
      },
      onError: (DioException e, handler) {
        Logger.d(e.error);
        return handler.next(e);
      },
    ));
  }

  static Future get(String path,
      {Map<String, dynamic>? queryParameters}) async {
    final res = await _dio.get(path, queryParameters: queryParameters);
    return _processData(res);
  }

  static Future post(String path, {Map<String, dynamic>? data}) async {
    final res = await _dio.post(path, data: data, options: Options());
    return _processData(res);
  }

  static _processData(Response response) {
    try {
      var data = ResponseModel.fromJson(response.data);
      if (data.code != 0) {
        Logger.d(data.msg);
        return null;
      } else {
        return data.data;
      }
    } catch (e) {
      Logger.e(e);
      return null;
    }
  }
}

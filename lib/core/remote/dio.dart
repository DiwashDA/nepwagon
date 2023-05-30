import 'package:dio/dio.dart';

class DioService {
  static DioService dioService = DioService._internal();

  DioService._internal();

  static DioService get instance => dioService;

  Dio dio = Dio();

  reinitializeDio(String url, String token) {
    dio
      ..options.baseUrl = url
      ..options.headers = {'Authorization': 'Bearer ${token}'};
  }
}

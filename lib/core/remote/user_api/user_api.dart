import 'package:dio/dio.dart';

import '../dio.dart';
import 'constants.dart';

abstract class UserApi {
  Future login(String userName, String password);
}

class UserApiImpl implements UserApi {
  UserApiImpl({Dio? dio})
      : _dio = dio ?? Dio()
          ..options.baseUrl =
              "url";
  final Dio _dio;
  DioService _dioService = DioService.instance;
  @override
  Future login(String userName, String password) async {
    try {
      var response = await _dio.post("login", data: {
        Constants.username: userName,
        Constants.password: password,
      });

      return response;
    } on DioError catch (e) {
      print("here");
      print(e.response);

      print(e.response?.data);
      print(e.response?.statusCode);
      print(e.response?.statusMessage);
      throw Exception(e.response?.data['message'] ?? "Login failed");
    }
  }
}

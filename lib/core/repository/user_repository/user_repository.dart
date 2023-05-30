import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../core.dart';

final userRepositoryProvider = Provider<UserRepository>((ref) {
  return UserRepositoryImpl();
});

abstract class UserRepository {

  login();
}

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl({UserApi? userApi}) : _userApi = userApi ?? UserApiImpl();
  final UserApi _userApi;
  @override
  login() {
    // TODO: implement login
    throw UnimplementedError();
  }
}

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final splashRepositoryProvider = Provider<SplashRepository>((ref) {
  return SplashRepositoryImpl();
});

abstract class SplashRepository {
  Future<bool> isLoggedIn();

  // Future<bool> tokenGenerated();
}

class SplashRepositoryImpl implements SplashRepository {

  @override
  Future<bool> isLoggedIn() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
  //   if (pref.getBool(DatabaseKeys.isLoggedIn) ?? false) {
  //     FlavorConfig.instance.variables['token'] =
  //         await SharedPreferences.getInstance()
  //             .then((value) => value.getString(DatabaseKeys.token));
  //     print("${FlavorConfig.instance.variables['token']}");
  //     DioService.instance.reinitializeDio();
  //
  //     return true;
  //   }
    return false;
  }
}

import 'package:shared_preferences/shared_preferences.dart';

class DatabaseServices {
  static DatabaseServices? instance;
  late SharedPreferences prefs;

  factory DatabaseServices() {
    instance ??= DatabaseServices._();

    return instance!;
  }

  DatabaseServices._() {
    SharedPreferences.getInstance()
        .then(
          (prefsInstance) => prefs = prefsInstance,
        )
        .then((value) => prefs.clear());
  }

  containsKey(String key) {
    return prefs.containsKey(key);
  }

  setString(String key, String value) async {
    await prefs.setString(key, value);
  }

  setBool(String key, bool value) async {
    await prefs.setBool(key, value);
  }

  setInt(String key, int value) async {
    await prefs.setInt(key, value);
  }

  getBool(String key) async {
    bool? data = await prefs.getBool(key);
    return data;
  }

  getString(String key) async {

    String? data = await prefs.getString(key);
    return data;
  }

  getInt(String key) async {
    int? data = await prefs.getInt(key);
    return data;
  }

  setListData(String key, List<String> value) async {
    await prefs.setStringList(key, value);
  }

  getListData(String key) async {
    List<String>? data = await prefs.getStringList(key);
    return data;
  }

  deleteData(String key) async {
    if (prefs.containsKey(key)) {
      await prefs.remove(key);
    }
  }

  clearLocalStorage() async {
    await prefs.clear();
  }
}

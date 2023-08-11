import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../Auth/models/user.dart';

enum Keys {
  isLogged,
  user,
  token,
}

class SharedPrefController {
  static late SharedPreferences sharedPreferences;

  SharedPrefController._();

  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setUserData(UserModel user) async {
    await sharedPreferences.setBool(Keys.isLogged.name, true);
    await sharedPreferences.setString(Keys.user.name, jsonEncode(user.toFirebase()));
  }

  static saveToken(String token) async {
    await sharedPreferences.setString(Keys.token.name, token);
  }


  UserModel getUserData(String? userJson) {
    return UserModel.fromJson(jsonDecode(userJson!));
  }

  static dynamic getData({
    required String key,
  }) {
    return sharedPreferences.get(key);
  }

  static Future<void> clearData() async {
    await sharedPreferences.remove(Keys.isLogged.name);
    await sharedPreferences.remove(Keys.user.name);
    await sharedPreferences.remove(Keys.token.name);
  }
}

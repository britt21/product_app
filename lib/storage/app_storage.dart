import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppStorage {
  static final _storage = GetStorage();

  // Save user login state
  static Future<void> saveUserLogin(bool isLoggedIn) async {
    await _storage.write('isLoggedIn', isLoggedIn);
  }

  // Get user login state
  static bool isUserLoggedIn() {
    return _storage.read('isLoggedIn') ?? false;
  }
}

import 'package:flutter/services.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hwtest_adam_fauzan/feature/auth/auth_controller.dart';
import 'data/local/storage/storage_constants.dart';

class Initializer {
  static Future<void> init() async {
    try {
      _initScreenPreference();
      await GetStorage.init(StorageName.STORAGE_NAME);
      await Get.putAsync<FlutterSecureStorage>(() async {
        return FlutterSecureStorage();
      });
      Get.put<AuthController>(AuthController());
    } catch (err) {
      rethrow;
    }
  }

  static void _initScreenPreference() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}

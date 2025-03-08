import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<HomeController>(HomeController());
  }
}

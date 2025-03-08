import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/blank_page/blank_page_controller.dart';

class BlankPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<BlankPageController>(BlankPageController());
  }
}

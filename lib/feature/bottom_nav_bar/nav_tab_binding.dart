import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/blank_page/blank_page_controller.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_controller.dart';
import '/feature/bottom_nav_bar/nav_tab_controller.dart';

class NavTabBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NavTabController>(() => NavTabController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<BlankPageController>(() => BlankPageController());
  }
}

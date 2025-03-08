import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/blank_page/blank_page_page.dart';
import 'package:hwtest_adam_fauzan/feature/bottom_nav_bar/nav_tab_binding.dart';
import 'package:hwtest_adam_fauzan/feature/bottom_nav_bar/nav_tab_page.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_page.dart';
import 'package:hwtest_adam_fauzan/feature/loader/loading_page.dart';
import 'page_names.dart';

class PageRoutes {
  static final pages = [
    GetPage(
      name: PageName.LOADER,
      page: () => const LoadingPage(),
    ),
    GetPage(
      name: PageName.NAVTAB,
      page: () => const NavTabPage(),
      binding: NavTabBinding(),
    ),
    GetPage(name: PageName.HOME, page: () => const HomePage()),
    GetPage(name: PageName.BLANK, page: () => const BlankPage()),
  ];
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_page.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:hwtest_adam_fauzan/feature/blank_page/blank_page_page.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import '/utills/widget/colored_status_bar.dart';

import 'nav_tab_controller.dart';

class NavTabPage extends StatelessWidget {
  const NavTabPage({super.key});

  List<Widget> _buildScreens() {
    return [
      const HomePage(),
      const BlankPage(),
      const BlankPage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.home),
        title: 'txt_nav_home'.tr,
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: AppColors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.event),
        title: 'txt_nav_events'.tr,
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: AppColors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: const Icon(Icons.person),
        title: 'txt_nav_profile'.tr,
        activeColorPrimary: AppColors.colorPrimary,
        inactiveColorPrimary: AppColors.grey,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<NavTabController>(
      builder: (controller) {
        return ColoredStatusBar(
          child: PersistentTabView(
            context,
            controller:
                PersistentTabController(initialIndex: controller.tabIndex),
            screens: _buildScreens(),
            items: _navBarsItems(context),
            confineToSafeArea: true,
            backgroundColor: AppColors.bgAccent,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            navBarStyle: NavBarStyle.style6,
            navBarHeight: 80,
            padding: const EdgeInsets.only(bottom: 20, top: 16),
            onItemSelected: (index) => controller.changeTabIndex(index),
          ),
        );
      },
    );
  }
}

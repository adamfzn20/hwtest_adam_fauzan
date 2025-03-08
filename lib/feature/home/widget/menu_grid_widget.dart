import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/widget/menu_widget.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import 'package:hwtest_adam_fauzan/routes/page_names.dart';

class MenuGridWidget extends StatelessWidget {
  const MenuGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 1.5,
      children: [
        MenuWidget(
          image: AppImages.icAtlasLogo,
          label: "txt_menus_atlas".tr,
          route: PageName.BLANK,
        ),
        MenuWidget(
          image: AppImages.icHomeReservation,
          label: "txt_menus_reservation".tr,
          route: PageName.BLANK,
        ),
        MenuWidget(
          image: AppImages.icHomeOutlets,
          label: "txt_menus_outlet".tr,
          route: PageName.BLANK,
        ),
        MenuWidget(
          image: AppImages.icBottles,
          label: "txt_menus_mybottles".tr,
          route: PageName.BLANK,
        ),
        MenuWidget(
          image: AppImages.icWhatson,
          label: "txt_menus_whatson".tr,
          route: PageName.BLANK,
        ),
        MenuWidget(
          image: AppImages.icEvent,
          label: "txt_menus_events".tr,
          route: PageName.BLANK,
        ),
      ],
    );
  }
}

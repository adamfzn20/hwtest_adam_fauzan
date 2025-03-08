import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_controller.dart';
import 'package:hwtest_adam_fauzan/feature/home/widget/banner_widget.dart';
import 'package:hwtest_adam_fauzan/feature/home/widget/menu_grid_widget.dart';
import 'package:hwtest_adam_fauzan/feature/home/widget/topCharts_widget.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import 'package:hwtest_adam_fauzan/utills/widget/content/notice_content_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        init: HomeController(),
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Hi, HWG People',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColour00,
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'txt_login'.tr,
                      style: const TextStyle(
                        color: AppColors.colorPrimary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  ),
                  const BannerWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  NoticeContentWidget(
                    image: AppImages.icUserLogin,
                    contentText: 'txt_login_see_voucher'.tr,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const MenuGridWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    "txt_home_myfavoriteoutlets".tr,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      color: AppColors.textColour00,
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  NoticeContentWidget(
                    contentText: 'txt_your_favorite_outlets'.tr,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TopChartsList(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

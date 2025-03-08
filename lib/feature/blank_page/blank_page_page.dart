import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/blank_page/blank_page_controller.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import 'package:hwtest_adam_fauzan/utills/widget/app_bar/app_bar_widget.dart';
import 'package:sizer/sizer.dart';

class BlankPage extends StatelessWidget {
  const BlankPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget.primaryAppbar(
        context: context,
        titleString: 'txt_blank_page'.tr,
      ),
      body: GetBuilder<BlankPageController>(
        init: BlankPageController(),
        builder: (controller) {
          return Center(
            heightFactor: 1.5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.svgEmpty,
                  width: 64.w,
                  fit: BoxFit.fill,
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(24, 40, 24, 20),
                  child: Text(
                    "txt_no_result_found".tr,
                    style: Theme.of(context)
                        .textTheme
                        .headlineMedium!
                        .copyWith(color: AppColors.textColour00),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

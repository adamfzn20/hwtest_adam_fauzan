import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_controller.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import 'package:shimmer/shimmer.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Obx(
      () {
        if (controller.isLoading.value) {
          return Shimmer.fromColors(
            baseColor: AppColors.textColour60,
            highlightColor: AppColors.textColour10,
            child: Container(
              height: 200,
              width: double.infinity,
              color: AppColors.surface,
            ),
          );
        }
        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) =>
                    controller.updateIndicator(index),
              ),
              items: controller.bannerImages.map((imageUrl) {
                return Image.network(imageUrl);
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: controller.bannerImages.asMap().entries.map((entry) {
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: (controller.currentIndex == entry.key
                        ? AppColors.colorPrimary.withOpacity(1.0)
                        : AppColors.colorPrimary.withOpacity(0.2)),
                  ),
                );
              }).toList(),
            ),
          ],
        );
      },
    );
  }
}

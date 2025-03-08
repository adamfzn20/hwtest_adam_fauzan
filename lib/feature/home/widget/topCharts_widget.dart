import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/feature/home/home_controller.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';
import 'package:hwtest_adam_fauzan/utills/widget/content/detail_content_item.dart';
import 'package:shimmer/shimmer.dart';

class TopChartsList extends StatelessWidget {
  const TopChartsList({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: AppColors.bgAccent,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Obx(() {
        if (controller.isLoadingCharts.value) {
          return Shimmer.fromColors(
            baseColor: AppColors.textColour60,
            highlightColor: AppColors.textColour10,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: ListTile(
                  leading: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: AppColors.textColour40,
                      borderRadius:
                          BorderRadius.circular(8.0), // Radius sesuai keinginan
                    ),
                  ),
                  title: const SizedBox(
                      height: 16,
                      width: 80,
                      child: DecoratedBox(
                          decoration:
                              BoxDecoration(color: AppColors.textColour40))),
                  subtitle: const SizedBox(
                      height: 12,
                      width: 60,
                      child: DecoratedBox(
                          decoration:
                              BoxDecoration(color: AppColors.textColour40))),
                ),
              ),
            ),
          );
        }

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'HWGPeople ${"txt_top_charts".tr}',
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.textColour00,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: controller.topCharts.length,
              itemBuilder: (context, index) {
                final chart = controller.topCharts[index];
                return DetailContent(
                  position: chart['position']!,
                  imageUrl: chart['image_url']!,
                  title: chart['title']!,
                  artistName: chart['artist']!,
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: Image.asset(AppImages.icApplemusic.path,
                      fit: BoxFit.contain),
                ),
                const SizedBox(width: 16),
                Flexible(
                  child: Image.asset(AppImages.icSpotify.path,
                      fit: BoxFit.contain),
                ),
              ],
            )
          ],
        );
      }),
    );
  }
}

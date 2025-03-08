import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';

class MenuWidget extends StatelessWidget {
  final image, route;
  final String label;

  const MenuWidget(
      {super.key,
      required this.image,
      required this.label,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.toNamed(route),
      child: Column(
        children: [
          SvgPicture.asset(image, width: 30, height: 30),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12,
              color: AppColors.textColour00,
            ),
          ),
        ],
      ),
    );
  }
}

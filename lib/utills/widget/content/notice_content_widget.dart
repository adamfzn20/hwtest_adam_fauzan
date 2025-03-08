import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';

class NoticeContentWidget extends StatelessWidget {
  final String? image;
  final String contentText;

  const NoticeContentWidget({super.key, this.image, required this.contentText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: AppColors.bgAccent,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          if (image != null)
            Padding(
              padding: const EdgeInsets.only(right: 12),
              child: SvgPicture.asset(image!, width: 30, height: 30),
            ),
          Expanded(
            child: Text(
              contentText,
              style: const TextStyle(
                color: AppColors.textColour00,
                // fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

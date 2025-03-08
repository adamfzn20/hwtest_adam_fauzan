import 'package:flutter/material.dart';
import 'package:hwtest_adam_fauzan/resources/resources.dart';

class DetailContent extends StatelessWidget {
  final String position;
  final String imageUrl;
  final String title;
  final String artistName;

  const DetailContent({
    super.key,
    required this.position,
    required this.imageUrl,
    required this.title,
    required this.artistName,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '$position${position == '1' ? 'st' : position == '2' ? 'nd' : position == '3' ? 'rd' : 'th'}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: position == '1'
                        ? AppColors.colorPrimary
                        : position == '2' || position == '3'
                            ? AppColors.colorSecondary
                            : Colors.white,
                    fontSize: position == '1' ? 16 : 12,
                  ),
                ),
                const SizedBox(width: 8),
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    imageUrl,
                    width: 40,
                    height: 40,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      AppImages.imageEmpty.path,
                      width: 40,
                      height: 40,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        color: AppColors.surface,
                        fontWeight: FontWeight.bold,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    Text(
                      artistName,
                      style: const TextStyle(
                        color: AppColors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}

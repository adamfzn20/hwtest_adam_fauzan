import '/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SMBottomNavBarItem extends StatelessWidget {
  const SMBottomNavBarItem({
    super.key,
    required this.imageDeactive,
    required this.imageActive,
    required this.label,
    required this.index,
    required this.onTap,
    this.currentIndex = 0,
    this.notifCounter = 0,
  });

  final ValueChanged<int> onTap;
  final Image imageDeactive;
  final Image imageActive;
  final int currentIndex;
  final int notifCounter;
  final int index;
  final String label;

  @override
  Widget build(BuildContext context) {
    var rad = const Radius.circular(4.0);
    return Expanded(
      child: SizedBox(
        height: 56,
        child: Material(
          type: MaterialType.transparency,
          child: InkWell(
            onTap: () {
              onTap(index);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 3),
                SizedBox(
                  height: 24,
                  child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          child: currentIndex == index
                              ? imageActive
                              : imageDeactive),
                      // NOTIFICATION
                      notifCounter > 0
                          ? Container(
                              alignment: Alignment.center,
                              margin: EdgeInsets.only(
                                  bottom: 12, left: (100.w / 5) / 2),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                child: Wrap(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.only(
                                          bottom: 0, left: 3, top: 2, right: 3),
                                      decoration: BoxDecoration(
                                        gradient: const LinearGradient(
                                            begin: Alignment.topCenter,
                                            end: Alignment.bottomCenter,
                                            stops: [
                                              0.0,
                                              1.0
                                            ],
                                            colors: <Color>[
                                              AppColors.colorPrimary,
                                              AppColors.colorPrimary
                                            ]),
                                        borderRadius: BorderRadius.only(
                                            topLeft: rad,
                                            topRight: rad,
                                            bottomRight: rad),
                                      ),
                                      child: Text(
                                        getStringMaxCount("$notifCounter"),
                                        style: const TextStyle(
                                            fontSize: 10,
                                            height: 1,
                                            color: AppColors.white,
                                            fontWeight: FontWeight.normal),
                                        maxLines: 1,
                                        softWrap: false,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                const SizedBox(height: 3),
                Text(label,
                    style: TextStyle(
                        color: (currentIndex == index
                            ? AppColors.colorPrimary
                            : AppColors.grey),
                        fontSize: 11,
                        fontWeight: FontWeight.normal)),
                const SizedBox(height: 4),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getStringMaxCount(String? s) {
    if (s != null && s.isNotEmpty) {
      var parse = int.parse(s);
      if (parse > 999) {
        return "999+";
      }
      return s;
    } else {
      return "";
    }
  }
}

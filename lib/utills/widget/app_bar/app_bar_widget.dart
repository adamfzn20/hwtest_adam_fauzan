import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:get/get.dart';
import '/resources/resources.dart';

class AppBarWidget {
  static AppBar defaultAppBar(
      {Color? color,
      // required Brightness brightness,
      ImageProvider? backImage,
      bool? center,
      String? title,
      TextStyle? titleStyle,
      Color? backgroundColor,
      List<Widget>? actions,
      Function()? backCallback,
      PreferredSizeWidget? bottom,
      required BuildContext context}) {
    return AppBar(
      title: Text(
        title ?? '',
        style: titleStyle ??
            Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: AppColors.textColour00),
      ),
      centerTitle: center,
      backgroundColor: backgroundColor ?? Colors.transparent,
      elevation: 0.0,
      leading: InkWell(
        onTap: backCallback ?? () => Get.back(),
        child: backImage == null
            ? const Icon(
                Icons.arrow_back_ios_rounded,
                color: AppColors.textColour00,
              )
            : Image(
                image: backImage,
                width: 24,
                height: 24,
              ),
      ),
      actions: actions ?? [],
      bottom: bottom,
    );
  }

  // AppBar transparent with just Back Button
  static AppBar simple(
      {required String titleString, required BuildContext context}) {
    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.textColour00),
      backgroundColor: Colors.transparent,
      title: Text(
        titleString,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontSize: 18, color: AppColors.textColour00),
      ),
    );
  }

  /// Gunakan `Primary Appbar` untuk membuat AppBar default secara global
  /// agar jenis AppBar utama terpusat dan modular
  /// *boleh di-edit sesuai kebutuhan*
  ///
  static AppBar primaryAppbar({
    required String titleString,
    required BuildContext context,
    bool withFilter = false,
    Function()? filterOnPressed,
    bool withSearch = false,
    Widget? searchResultWidget,
    bool? center,
  }) {
    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.textColour00),
      backgroundColor: AppColors.background,
      shadowColor: const Color(0xFF000E33).withOpacity(0.1),
      elevation: 2,
      centerTitle: center,
      title: Text(
        titleString,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(fontSize: 18, color: AppColors.textColour00),
      ),
      actions: [
        Visibility(
          visible: withSearch,
          child: Container(
            margin:
                withFilter == false ? const EdgeInsets.only(right: 8) : null,
            child: IconButton(
              icon:
                  const Icon(IconlyLight.search, color: AppColors.textColour00),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(resultWidget: searchResultWidget),
                );
              },
            ),
          ),
        ),
        Visibility(
          visible: withFilter,
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
                icon: const Icon(
                  Icons.info,
                  color: AppColors.textColour00,
                ),
                onPressed: filterOnPressed),
          ),
        ),
      ],
    );
  }

  /// `Secondary Appbar` digunakan apabila membutuhkan jenis AppBar yang berbeda
  /// dari AppBar utama. Misal untuk AppBar Detail
  /// *boleh di-edit sesuai kebutuhan*
  ///
  static AppBar secondaryAppbar({
    required String titleString,
    required BuildContext context,
    bool withFilter = false,
    Function()? filterOnPressed,
    bool withSearch = false,
    Widget? searchResultWidget,
  }) {
    return AppBar(
      iconTheme: const IconThemeData(color: AppColors.textColour00),
      backgroundColor: AppColors.background,
      shadowColor: const Color(0xFF000E33).withOpacity(0.1),
      elevation: 2,
      title: Text(
        titleString,
        style: Theme.of(context)
            .textTheme
            .headlineSmall!
            .copyWith(color: AppColors.textColour00),
      ),
      actions: [
        Visibility(
          visible: withSearch,
          child: Container(
            margin:
                withFilter == false ? const EdgeInsets.only(right: 8) : null,
            child: IconButton(
              icon:
                  const Icon(IconlyLight.search, color: AppColors.textColour00),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: MySearchDelegate(resultWidget: searchResultWidget),
                );
              },
            ),
          ),
        ),
        Visibility(
          visible: withFilter,
          child: Container(
            margin: const EdgeInsets.only(right: 8),
            child: IconButton(
                icon: const Icon(IconlyLight.filter2,
                    color: AppColors.textColour00),
                onPressed: filterOnPressed),
          ),
        ),
      ],
    );
  }
}

class MySearchDelegate extends SearchDelegate {
  MySearchDelegate({required this.resultWidget});

  Widget? resultWidget;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear, color: AppColors.textColour00),
        onPressed: () {
          if (query.isEmpty) {
            close(context, null);
          } else {
            query = '';
          }
        },
      )
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back, color: AppColors.textColour00),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return resultWidget ??
        Center(
          child: Text(
            query,
          ),
        );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Column();
  }
}

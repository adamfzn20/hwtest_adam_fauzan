/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $LibGen {
  const $LibGen();

  /// Directory path: lib/resources
  $LibResourcesGen get resources => const $LibResourcesGen();
}

class $LibResourcesGen {
  const $LibResourcesGen();

  /// Directory path: lib/resources/images
  $LibResourcesImagesGen get images => const $LibResourcesImagesGen();
}

class $LibResourcesImagesGen {
  const $LibResourcesImagesGen();

  /// File path: lib/resources/images/ic_applemusic.png
  AssetGenImage get icApplemusic =>
      const AssetGenImage('lib/resources/images/ic_applemusic.png');

  /// File path: lib/resources/images/ic_atlas_logo.svg
  String get icAtlasLogo => 'lib/resources/images/ic_atlas_logo.svg';

  /// File path: lib/resources/images/ic_bottles.svg
  String get icBottles => 'lib/resources/images/ic_bottles.svg';

  /// File path: lib/resources/images/ic_event.svg
  String get icEvent => 'lib/resources/images/ic_event.svg';

  /// File path: lib/resources/images/ic_home_outlets.svg
  String get icHomeOutlets => 'lib/resources/images/ic_home_outlets.svg';

  /// File path: lib/resources/images/ic_home_reservation.svg
  String get icHomeReservation =>
      'lib/resources/images/ic_home_reservation.svg';

  /// File path: lib/resources/images/ic_spotify.png
  AssetGenImage get icSpotify =>
      const AssetGenImage('lib/resources/images/ic_spotify.png');

  /// File path: lib/resources/images/ic_user_login.svg
  String get icUserLogin => 'lib/resources/images/ic_user_login.svg';

  /// File path: lib/resources/images/ic_whatson.svg
  String get icWhatson => 'lib/resources/images/ic_whatson.svg';

  /// File path: lib/resources/images/image-empty.png
  AssetGenImage get imageEmpty =>
      const AssetGenImage('lib/resources/images/image-empty.png');

  /// File path: lib/resources/images/svg_empty.svg
  String get svgEmpty => 'lib/resources/images/svg_empty.svg';

  /// File path: lib/resources/images/svg_error_state.svg
  String get svgErrorState => 'lib/resources/images/svg_error_state.svg';

  /// List of all assets
  List<dynamic> get values => [
        icApplemusic,
        icAtlasLogo,
        icBottles,
        icEvent,
        icHomeOutlets,
        icHomeReservation,
        icSpotify,
        icUserLogin,
        icWhatson,
        imageEmpty,
        svgEmpty,
        svgErrorState
      ];
}

class Assets {
  const Assets._();

  static const $LibGen lib = $LibGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

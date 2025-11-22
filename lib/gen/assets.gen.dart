// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsAppImagesGen {
  const $AssetsAppImagesGen();

  /// File path: assets/app_images/Skai Green Eye.svg
  String get skaiGreenEye => 'assets/app_images/Skai Green Eye.svg';

  /// File path: assets/app_images/apple.svg
  String get apple => 'assets/app_images/apple.svg';

  /// File path: assets/app_images/facebook.svg
  String get facebook => 'assets/app_images/facebook.svg';

  /// File path: assets/app_images/google.svg
  String get google => 'assets/app_images/google.svg';

  /// List of all assets
  List<String> get values => [skaiGreenEye, apple, facebook, google];
}

class $AssetsFontsGen {
  const $AssetsFontsGen();

  /// File path: assets/fonts/Nunito-Black.ttf
  String get nunitoBlack => 'assets/fonts/Nunito-Black.ttf';

  /// File path: assets/fonts/Nunito-BlackItalic.ttf
  String get nunitoBlackItalic => 'assets/fonts/Nunito-BlackItalic.ttf';

  /// File path: assets/fonts/Nunito-Bold.ttf
  String get nunitoBold => 'assets/fonts/Nunito-Bold.ttf';

  /// File path: assets/fonts/Nunito-BoldItalic.ttf
  String get nunitoBoldItalic => 'assets/fonts/Nunito-BoldItalic.ttf';

  /// File path: assets/fonts/Nunito-ExtraBold.ttf
  String get nunitoExtraBold => 'assets/fonts/Nunito-ExtraBold.ttf';

  /// File path: assets/fonts/Nunito-ExtraBoldItalic.ttf
  String get nunitoExtraBoldItalic => 'assets/fonts/Nunito-ExtraBoldItalic.ttf';

  /// File path: assets/fonts/Nunito-ExtraLight.ttf
  String get nunitoExtraLight => 'assets/fonts/Nunito-ExtraLight.ttf';

  /// File path: assets/fonts/Nunito-ExtraLightItalic.ttf
  String get nunitoExtraLightItalic =>
      'assets/fonts/Nunito-ExtraLightItalic.ttf';

  /// File path: assets/fonts/Nunito-Italic.ttf
  String get nunitoItalic => 'assets/fonts/Nunito-Italic.ttf';

  /// File path: assets/fonts/Nunito-Light.ttf
  String get nunitoLight => 'assets/fonts/Nunito-Light.ttf';

  /// File path: assets/fonts/Nunito-LightItalic.ttf
  String get nunitoLightItalic => 'assets/fonts/Nunito-LightItalic.ttf';

  /// File path: assets/fonts/Nunito-Medium.ttf
  String get nunitoMedium => 'assets/fonts/Nunito-Medium.ttf';

  /// File path: assets/fonts/Nunito-MediumItalic.ttf
  String get nunitoMediumItalic => 'assets/fonts/Nunito-MediumItalic.ttf';

  /// File path: assets/fonts/Nunito-Regular.ttf
  String get nunitoRegular => 'assets/fonts/Nunito-Regular.ttf';

  /// File path: assets/fonts/Nunito-SemiBold.ttf
  String get nunitoSemiBold => 'assets/fonts/Nunito-SemiBold.ttf';

  /// File path: assets/fonts/Nunito-SemiBoldItalic.ttf
  String get nunitoSemiBoldItalic => 'assets/fonts/Nunito-SemiBoldItalic.ttf';

  /// File path: assets/fonts/app_icons.ttf
  String get appIcons => 'assets/fonts/app_icons.ttf';

  /// List of all assets
  List<String> get values => [
        nunitoBlack,
        nunitoBlackItalic,
        nunitoBold,
        nunitoBoldItalic,
        nunitoExtraBold,
        nunitoExtraBoldItalic,
        nunitoExtraLight,
        nunitoExtraLightItalic,
        nunitoItalic,
        nunitoLight,
        nunitoLightItalic,
        nunitoMedium,
        nunitoMediumItalic,
        nunitoRegular,
        nunitoSemiBold,
        nunitoSemiBoldItalic,
        appIcons
      ];
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/dev.png
  AssetGenImage get dev => const AssetGenImage('assets/icons/dev.png');

  /// File path: assets/icons/prod.png
  AssetGenImage get prod => const AssetGenImage('assets/icons/prod.png');

  /// File path: assets/icons/stage.png
  AssetGenImage get stage => const AssetGenImage('assets/icons/stage.png');

  /// List of all assets
  List<AssetGenImage> get values => [dev, prod, stage];
}

class $AssetsSplashGen {
  const $AssetsSplashGen();

  /// File path: assets/splash/splash_dark.png
  AssetGenImage get splashDark =>
      const AssetGenImage('assets/splash/splash_dark.png');

  /// File path: assets/splash/splash_light.png
  AssetGenImage get splashLight =>
      const AssetGenImage('assets/splash/splash_light.png');

  /// List of all assets
  List<AssetGenImage> get values => [splashDark, splashLight];
}

class Assets {
  const Assets._();

  static const $AssetsAppImagesGen appImages = $AssetsAppImagesGen();
  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsSplashGen splash = $AssetsSplashGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

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

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

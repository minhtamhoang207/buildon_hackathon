/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/img_intro_1.png
  AssetGenImage get imgIntro1 =>
      const AssetGenImage('assets/images/img_intro_1.png');

  /// File path: assets/images/img_intro_2.png
  AssetGenImage get imgIntro2 =>
      const AssetGenImage('assets/images/img_intro_2.png');

  /// File path: assets/images/img_intro_3.png
  AssetGenImage get imgIntro3 =>
      const AssetGenImage('assets/images/img_intro_3.png');

  /// File path: assets/images/img_intro_4.png
  AssetGenImage get imgIntro4 =>
      const AssetGenImage('assets/images/img_intro_4.png');

  /// File path: assets/images/img_intro_5.png
  AssetGenImage get imgIntro5 =>
      const AssetGenImage('assets/images/img_intro_5.png');

  /// File path: assets/images/img_login.jpg
  AssetGenImage get imgLogin =>
      const AssetGenImage('assets/images/img_login.jpg');

  /// File path: assets/images/img_mask.png
  AssetGenImage get imgMask =>
      const AssetGenImage('assets/images/img_mask.png');
}

class $AssetsLottiesGen {
  const $AssetsLottiesGen();

  /// File path: assets/lotties/img_login.json
  String get imgLogin => 'assets/lotties/img_login.json';

  /// File path: assets/lotties/lottie_empty_box.json
  String get lottieEmptyBox => 'assets/lotties/lottie_empty_box.json';

  /// File path: assets/lotties/lottie_error.json
  String get lottieError => 'assets/lotties/lottie_error.json';

  /// File path: assets/lotties/lottie_loading.json
  String get lottieLoading => 'assets/lotties/lottie_loading.json';
}

class $AssetsSvgsGen {
  const $AssetsSvgsGen();

  /// File path: assets/svgs/ic_dot_menu.svg
  String get icDotMenu => 'assets/svgs/ic_dot_menu.svg';

  /// File path: assets/svgs/ic_lock.svg
  String get icLock => 'assets/svgs/ic_lock.svg';

  /// File path: assets/svgs/ic_mask.svg
  String get icMask => 'assets/svgs/ic_mask.svg';

  /// File path: assets/svgs/ic_person.svg
  String get icPerson => 'assets/svgs/ic_person.svg';

  /// File path: assets/svgs/ic_success.svg
  String get icSuccess => 'assets/svgs/ic_success.svg';

  /// File path: assets/svgs/ic_warning.svg
  String get icWarning => 'assets/svgs/ic_warning.svg';
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsLottiesGen lotties = $AssetsLottiesGen();
  static const $AssetsSvgsGen svgs = $AssetsSvgsGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  String get path => _assetName;

  String get keyName => _assetName;
}

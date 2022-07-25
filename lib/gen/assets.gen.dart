/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsFontsGen {
  const $AssetsFontsGen();
}

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/check.png
  AssetGenImage get check => const AssetGenImage('assets/icons/check.png');

  /// File path: assets/icons/email.png
  AssetGenImage get email => const AssetGenImage('assets/icons/email.png');

  /// File path: assets/icons/globe.png
  AssetGenImage get globe => const AssetGenImage('assets/icons/globe.png');

  /// File path: assets/icons/google.png
  AssetGenImage get google => const AssetGenImage('assets/icons/google.png');

  /// File path: assets/icons/lock.png
  AssetGenImage get lock => const AssetGenImage('assets/icons/lock.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/today.png
  AssetGenImage get today => const AssetGenImage('assets/icons/today.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');

  /// File path: assets/icons/usertext.png
  AssetGenImage get usertext =>
      const AssetGenImage('assets/icons/usertext.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/eclips.png
  AssetGenImage get eclips => const AssetGenImage('assets/images/eclips.png');

  /// File path: assets/images/logo.png
  AssetGenImage get logo => const AssetGenImage('assets/images/logo.png');

  /// File path: assets/images/logo_gredient.png
  AssetGenImage get logoGredient =>
      const AssetGenImage('assets/images/logo_gredient.png');

  /// File path: assets/images/logo_horizontal.png
  AssetGenImage get logoHorizontal =>
      const AssetGenImage('assets/images/logo_horizontal.png');

  /// File path: assets/images/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/logo_white.png');

  /// File path: assets/images/on_bording_one.png
  AssetGenImage get onBordingOne =>
      const AssetGenImage('assets/images/on_bording_one.png');

  /// File path: assets/images/on_bording_three.png
  AssetGenImage get onBordingThree =>
      const AssetGenImage('assets/images/on_bording_three.png');

  /// File path: assets/images/on_bording_two.png
  AssetGenImage get onBordingTwo =>
      const AssetGenImage('assets/images/on_bording_two.png');

  /// File path: assets/images/on_boring_done.png
  AssetGenImage get onBoringDone =>
      const AssetGenImage('assets/images/on_boring_done.png');

  /// File path: assets/images/quotes.png
  AssetGenImage get quotes => const AssetGenImage('assets/images/quotes.png');
}

class Assets {
  Assets._();

  static const $AssetsFontsGen fonts = $AssetsFontsGen();
  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage extends AssetImage {
  const AssetGenImage(String assetName) : super(assetName);

  Image image({
    Key? key,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? width,
    double? height,
    Color? color,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    FilterQuality filterQuality = FilterQuality.low,
  }) {
    return Image(
      key: key,
      image: this,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }

  String get path => assetName;
}

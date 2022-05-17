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

  /// File path: assets/icons/globe.png
  AssetGenImage get globe => const AssetGenImage('assets/icons/globe.png');

  /// File path: assets/icons/search.png
  AssetGenImage get search => const AssetGenImage('assets/icons/search.png');

  /// File path: assets/icons/today.png
  AssetGenImage get today => const AssetGenImage('assets/icons/today.png');

  /// File path: assets/icons/user.png
  AssetGenImage get user => const AssetGenImage('assets/icons/user.png');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/logo_gredient.png
  AssetGenImage get logoGredient =>
      const AssetGenImage('assets/images/logo_gredient.png');

  /// File path: assets/images/logo_white.png
  AssetGenImage get logoWhite =>
      const AssetGenImage('assets/images/logo_white.png');
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

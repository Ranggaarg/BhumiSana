/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/BhumiSana.png
  AssetGenImage get bhumiSana =>
      const AssetGenImage('assets/images/BhumiSana.png');

  /// File path: assets/images/baju.jpeg
  AssetGenImage get baju => const AssetGenImage('assets/images/baju.jpeg');

  /// File path: assets/images/bhumisana_logo.png
  AssetGenImage get bhumisanaLogo =>
      const AssetGenImage('assets/images/bhumisana_logo.png');

  /// File path: assets/images/headphone.jpeg
  AssetGenImage get headphone =>
      const AssetGenImage('assets/images/headphone.jpeg');

  /// File path: assets/images/ic_arrow_right.svg
  SvgGenImage get icArrowRight =>
      const SvgGenImage('assets/images/ic_arrow_right.svg');

  /// File path: assets/images/ic_calendar.svg
  SvgGenImage get icCalendar =>
      const SvgGenImage('assets/images/ic_calendar.svg');

  /// File path: assets/images/ic_camera.svg
  SvgGenImage get icCamera => const SvgGenImage('assets/images/ic_camera.svg');

  /// File path: assets/images/ic_man.svg
  SvgGenImage get icMan => const SvgGenImage('assets/images/ic_man.svg');

  /// File path: assets/images/ic_medal_2.svg
  SvgGenImage get icMedal2 => const SvgGenImage('assets/images/ic_medal_2.svg');

  /// File path: assets/images/ic_profile.jpeg
  AssetGenImage get icProfile =>
      const AssetGenImage('assets/images/ic_profile.jpeg');

  /// File path: assets/images/ic_profile_circle.svg
  SvgGenImage get icProfileCircle =>
      const SvgGenImage('assets/images/ic_profile_circle.svg');

  /// File path: assets/images/ic_wallet.svg
  SvgGenImage get icWallet => const SvgGenImage('assets/images/ic_wallet.svg');

  /// File path: assets/images/jam.jpeg
  AssetGenImage get jam => const AssetGenImage('assets/images/jam.jpeg');

  /// File path: assets/images/sarung_tangan.jpeg
  AssetGenImage get sarungTangan =>
      const AssetGenImage('assets/images/sarung_tangan.jpeg');

  /// File path: assets/images/sepatu.jpeg
  AssetGenImage get sepatu => const AssetGenImage('assets/images/sepatu.jpeg');

  /// File path: assets/images/tempat_sampah.jpeg
  AssetGenImage get tempatSampah =>
      const AssetGenImage('assets/images/tempat_sampah.jpeg');

  /// File path: assets/images/totebag.jpeg
  AssetGenImage get totebag =>
      const AssetGenImage('assets/images/totebag.jpeg');
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
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

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}

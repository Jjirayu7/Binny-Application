import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get iBMPlexSansThai {
    return copyWith(
      fontFamily: 'IBM Plex Sans Thai',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodyLargeRegular => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 10.fSize,
      );
  static get bodySmallGreen200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.green200,
        fontSize: 10.fSize,
      );
  static get bodySmallGreenA70001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.greenA70001,
      );
  static get bodySmallInter => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallInterLight => theme.textTheme.bodySmall!.inter.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLight11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
        fontWeight: FontWeight.w300,
      );
// Display text style
  static get displayMediumWhiteA700 => theme.textTheme.displayMedium!.copyWith(
        color: appTheme.whiteA700,
      );
// Headline text style
  static get headlineSmallIBMPlexSansThai =>
      theme.textTheme.headlineSmall!.iBMPlexSansThai.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallIBMPlexSansThaiBlack90001 =>
      theme.textTheme.headlineSmall!.iBMPlexSansThai.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );
// Label text style
  static get labelLargeIBMPlexSansThaiGreenA70001 =>
      theme.textTheme.labelLarge!.iBMPlexSansThai.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeIBMPlexSansThaiGreenA70001Medium =>
      theme.textTheme.labelLarge!.iBMPlexSansThai.copyWith(
        color: appTheme.greenA70001,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumGreenA70001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.greenA70001,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
// Title text style
  static get titleLargeBlack90001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w400,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
      );
}

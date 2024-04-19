import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Black decorations
  static BoxDecoration get black => BoxDecoration(
        color: appTheme.gray900,
      );
// Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green50,
      );
  static BoxDecoration get fillGreenA => BoxDecoration(
        color: appTheme.greenA700,
      );
  static BoxDecoration get fillPinkA => BoxDecoration(
        color: appTheme.pinkA10001,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
// Gradient decorations
  static BoxDecoration get gradientGrayToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.35),
          colors: [appTheme.gray900, appTheme.black900],
        ),
      );
  static BoxDecoration get gradientGrayToBlueGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.32, 1),
          end: Alignment(0.91, 0.05),
          colors: [appTheme.gray90001, appTheme.blueGray900],
        ),
      );
  static BoxDecoration get gradientLightBlueToWhiteA => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 0.29),
          colors: [appTheme.lightBlue200, appTheme.whiteA700],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray10002,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        color: appTheme.gray900,
        border: Border.all(
          color: appTheme.gray900,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
  static BoxDecoration get outlineGray100 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray100,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.gray300,
          width: 1.h,
          strokeAlign: BorderSide.strokeAlignOutside,
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder11 => BorderRadius.circular(
        11.h,
      );
  static BorderRadius get circleBorder57 => BorderRadius.circular(
        57.h,
      );
// Custom borders
  static BorderRadius get customBorderTL10 => BorderRadius.vertical(
        top: Radius.circular(10.h),
      );
  static BorderRadius get customBorderTL14 => BorderRadius.only(
        topLeft: Radius.circular(14.h),
      );
  static BorderRadius get customBorderTL5 => BorderRadius.vertical(
        top: Radius.circular(5.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder14 => BorderRadius.circular(
        14.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

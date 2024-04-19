import 'dart:ui';
import 'package:flutter/material.dart';
import '../core/app_export.dart';

String _appTheme = "primary";
PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      dividerTheme: DividerThemeData(
        thickness: 17,
        space: 17,
        color: appTheme.gray900,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w300,
        ),
        bodyMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: appTheme.gray900,
          fontSize: 48.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        headlineLarge: TextStyle(
          color: appTheme.gray900,
          fontSize: 32.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          color: appTheme.gray900,
          fontSize: 24.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w500,
        ),
        labelLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w600,
        ),
        labelMedium: TextStyle(
          color: appTheme.gray700,
          fontSize: 11.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 20.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.whiteA700,
          fontSize: 16.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.gray600,
          fontSize: 14.fSize,
          fontFamily: 'IBM Plex Sans Thai',
          fontWeight: FontWeight.w600,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light();
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF0E0E0E);
  Color get black90001 => Color(0XFF000000);
// BlueGray
  Color get blueGray100 => Color(0XFFD2D2D2);
  Color get blueGray10001 => Color(0XFFCCCCCC);
  Color get blueGray10002 => Color(0XFFD9D9D9);
  Color get blueGray400 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF2F2E2E);
// Cyan
  Color get cyan900 => Color(0XFF045759);
// DeepOrange
  Color get deepOrange100 => Color(0XFFEECFAA);
// Gray
  Color get gray100 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEFEFEF);
  Color get gray300 => Color(0XFFE2E2E2);
  Color get gray400 => Color(0XFFC5C5C5);
  Color get gray600 => Color(0XFF7A7A7A);
  Color get gray700 => Color(0XFF6A6A6A);
  Color get gray70001 => Color(0XFF5C5C5C);
  Color get gray900 => Color(0XFF232323);
  Color get gray90001 => Color(0XFF1D1D1D);
// Green
  Color get green100 => Color(0XFFC4E7D9);
  Color get green200 => Color(0XFF9FFFA8);
  Color get green50 => Color(0XFFE0F0E4);
  Color get green800 => Color(0XFF3E7232);
  Color get green900 => Color(0XFF02682D);
  Color get greenA700 => Color(0XFF02C275);
// LightBlue
  Color get lightBlue200 => Color(0XFF7ED9F5);
// Lime
  Color get lime100 => Color(0XFFE9FBC6);
  Color get lime200 => Color(0XFFD7EEAA);
  Color get lime20001 => Color(0XFFD7F9A2);
// Orange
  Color get orange300 => Color(0XFFE3A965);
// Pink
  Color get pinkA100 => Color(0XFFFB7DB4);
  Color get pinkA10001 => Color(0XFFFB7DB3);
// Teal
  Color get teal300 => Color(0XFF4FB78D);
  Color get teal800 => Color(0XFF0F7B50);
// White
  Color get whiteA700 => Color(0XFFFFFFFF);
}

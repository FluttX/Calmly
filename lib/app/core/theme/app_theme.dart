import 'package:flutter/material.dart';

abstract class AppColor {
  Color get primaryColor;

  Color get secondaryColor;

  Color get success;

  Color get warning;

  Color get error;

  Color get surface;

  Color get textPrimary;

  Color get textSecondary;

  Color get textInversePrimary;

  Color get textInverseSecondary;

  Color get background;
}

abstract class AppTheme {
  AppColor get color;

  TextTheme get textTheme;

  FilledButtonThemeData get filledButtonThemeData;

  ThemeData get theme;
}

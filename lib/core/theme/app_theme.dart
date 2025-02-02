import 'package:flutter/material.dart';

abstract class AppColor {
  Color get primaryColor;

  Color get secondaryColor;

  Color get tertiaryColor;

  Color get success;

  Color get warning;

  Color get error;

  Color get surface;

  Color get textPrimary;

  Color get textSecondary;

  Color get textTertiary;

  Color get white;

  Color get background;

  Color get socialButton;
}

abstract class AppTheme {
  AppColor get color;

  TextTheme get textTheme;

  CheckboxThemeData get checkboxThemeData;

  FilledButtonThemeData get filledButtonThemeData;

  OutlinedButtonThemeData get outlinedButtonThemeData;

  InputDecorationTheme get inputDecorationTheme;

  ThemeData get theme;
}

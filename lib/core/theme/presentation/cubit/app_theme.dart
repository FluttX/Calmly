import 'package:flutter/material.dart';

abstract class AppTheme {
  AppColors get colors;

  TextTheme get textTheme;

  CheckboxThemeData get checkboxThemeData;

  DividerThemeData get dividerThemeData;

  FilledButtonThemeData get filledButtonThemeData;

  OutlinedButtonThemeData get outlinedButtonThemeData;

  InputDecorationTheme get inputDecorationTheme;

  TabBarTheme get tabBarTheme;

  ThemeData get theme;
}

abstract class AppColors {
  Color get primaryColor;

  Color get secondaryColor;

  Color get tertiaryColor;

  Color get success;

  Color get warning;

  Color get error;

  Color get surface;

  Color get containerSurface;

  Color get textPrimary;

  Color get textSecondary;

  Color get textTertiary;

  Color get white;

  Color get background;

  Color get secondaryBackground;

  Color get cardBackground;

  Color get iconBackground;

  Color get socialButton;

  Color get divider;
}

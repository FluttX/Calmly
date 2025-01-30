import 'package:calmly/app/core/style/app_text_style.dart';
import 'package:calmly/app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LightTheme extends AppTheme {
  @override
  AppColor get color => LightColor();

  @override
  TextTheme get textTheme => TextTheme(
        headlineLarge: AppTextStyle.headlineLarge,
      );

  @override
  FilledButtonThemeData get filledButtonThemeData => FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: color.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          ),
          fixedSize: const Size(double.infinity, 62),
          textStyle: TextStyle(color: color.textInversePrimary),
        ),
      );

  @override
  ThemeData get theme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: color.background,
        appBarTheme: AppBarTheme(backgroundColor: color.background),
        filledButtonTheme: filledButtonThemeData,
      );
}

class LightColor extends AppColor {
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get primaryColor => const Color(0xFF8E97FD);

  @override
  Color get secondaryColor => const Color(0xFF8E97FD);

  @override
  Color get surface => const Color(0xFFF2F3F7);

  @override
  Color get error => const Color(0xFFB00020);

  @override
  Color get success => const Color(0xFF4CAF50);

  @override
  Color get warning => const Color(0xFFFFC107);

  @override
  Color get textPrimary => const Color(0xFF3F414E);

  @override
  Color get textSecondary => const Color(0xFFA1A4B2);

  @override
  Color get textInversePrimary => const Color(0xFFFFFFFF);

  @override
  Color get textInverseSecondary => const Color(0xFFEBEAEC);
}

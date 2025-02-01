import 'package:calmly/app/core/style/app_text_style.dart';
import 'package:calmly/app/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LightTheme extends AppTheme {
  @override
  AppColor get color => LightColor();

  @override
  TextTheme get textTheme => const TextTheme(
        headlineLarge: AppTextStyle.headlineLarge,
        headlineMedium: AppTextStyle.headlineMedium,
        headlineSmall: AppTextStyle.headlineSmall,
        titleLarge: AppTextStyle.subtitleLarge,
        titleMedium: AppTextStyle.subtitleMedium,
        titleSmall: AppTextStyle.subtitleSmall,
        bodyLarge: AppTextStyle.bodyLarge,
        bodyMedium: AppTextStyle.bodyMedium,
        bodySmall: AppTextStyle.bodySmall,
        labelLarge: AppTextStyle.button,
        labelMedium: AppTextStyle.caption,
        labelSmall: AppTextStyle.overLine,
      );

  @override
  CheckboxThemeData get checkboxThemeData => CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return color.primaryColor;
          }
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(color.surface),
        side: WidgetStateBorderSide.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return BorderSide.none;
            }
            return BorderSide(color: color.textSecondary, width: 2);
          },
        ),
      );

  @override
  FilledButtonThemeData get filledButtonThemeData => FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: color.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fixedSize: const Size(double.infinity, 60),
          textStyle: textTheme.labelLarge?.copyWith(
            color: color.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      );

  @override
  OutlinedButtonThemeData get outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: color.background,
          foregroundColor: color.textPrimary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: color.white),
            borderRadius: BorderRadius.circular(15),
          ),
          fixedSize: const Size(double.infinity, 60),
          textStyle: textTheme.labelLarge?.copyWith(
            color: color.textPrimary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      );

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        filled: true,
        fillColor: color.surface, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.error, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: color.textSecondary.withOpacity(0.5)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(color: color.textSecondary),
        labelStyle: textTheme.bodyLarge?.copyWith(color: color.textPrimary),
        floatingLabelStyle: textTheme.bodyLarge
            ?.copyWith(color: color.primaryColor, fontWeight: FontWeight.w600),
        helperStyle: textTheme.bodySmall?.copyWith(color: color.textSecondary),
        errorStyle: textTheme.bodySmall?.copyWith(color: color.error),
        prefixStyle: textTheme.bodyLarge?.copyWith(color: color.textPrimary),
        suffixStyle: textTheme.bodyLarge?.copyWith(color: color.textPrimary),
      );

  @override
  ThemeData get theme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: color.background,
        appBarTheme: AppBarTheme(backgroundColor: color.background),
        checkboxTheme: checkboxThemeData,
        filledButtonTheme: filledButtonThemeData,
        outlinedButtonTheme: outlinedButtonThemeData,
        inputDecorationTheme: inputDecorationTheme,
      );
}

class LightColor extends AppColor {
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get primaryColor => const Color(0xFF8E97FD);

  @override
  Color get secondaryColor => const Color(0xFF3F414E);

  @override
  Color get tertiaryColor => const Color(0xFFEBEAEC);

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
  Color get textTertiary => const Color(0xFFFFECCC);

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get socialButton => const Color(0xFF7583CA);
}

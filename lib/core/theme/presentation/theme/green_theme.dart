import 'package:calmly/core/theme/theme.dart';
import 'package:flutter/material.dart';

class GreenTheme extends AppTheme {
  @override
  AppColors get colors => GreenColor();

  @override
  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: 48,
          fontWeight: FontWeight.w700,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        headlineMedium: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.w700,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        headlineSmall: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w700,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        titleSmall: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: colors.textPrimary,
          fontFamily: 'HelveticaNeue',
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w300,
          color: colors.textSecondary,
          fontFamily: 'HelveticaNeue',
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w400,
          color: colors.textSecondary,
          fontFamily: 'HelveticaNeue',
        ),
        labelLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: colors.textSecondary,
          fontFamily: 'HelveticaNeue',
        ),
        labelMedium: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: colors.textSecondary,
          fontFamily: 'HelveticaNeue',
        ),
        labelSmall: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w300,
          color: colors.textSecondary,
          fontFamily: 'HelveticaNeue',
        ),
      );

  @override
  CheckboxThemeData get checkboxThemeData => CheckboxThemeData(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        fillColor: WidgetStateProperty.resolveWith((states) {
          if (states.contains(WidgetState.selected)) {
            return colors.primaryColor;
          }
          return Colors.transparent;
        }),
        checkColor: WidgetStateProperty.all(colors.surface),
        side: WidgetStateBorderSide.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return BorderSide.none;
            }
            return BorderSide(color: colors.textSecondary, width: 2);
          },
        ),
      );

  @override
  FilledButtonThemeData get filledButtonThemeData => FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: colors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fixedSize: const Size(double.infinity, 60),
          textStyle: textTheme.labelLarge?.copyWith(
            color: colors.white,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      );

  @override
  OutlinedButtonThemeData get outlinedButtonThemeData =>
      OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: colors.background,
          foregroundColor: colors.textPrimary,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: colors.white),
            borderRadius: BorderRadius.circular(15),
          ),
          fixedSize: const Size(double.infinity, 60),
          textStyle: textTheme.labelLarge?.copyWith(
            color: colors.textPrimary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
        ),
      );

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
        filled: true,
        fillColor: colors.surface,
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
          borderSide: BorderSide(color: colors.primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: colors.error, width: 2),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: colors.error, width: 2),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: colors.textSecondary.withOpacity(0.5)),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 18,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(color: colors.textSecondary),
        labelStyle: textTheme.bodyLarge?.copyWith(color: colors.textPrimary),
        floatingLabelStyle: textTheme.bodyLarge
            ?.copyWith(color: colors.primaryColor, fontWeight: FontWeight.w600),
        helperStyle: textTheme.bodySmall?.copyWith(color: colors.textSecondary),
        errorStyle: textTheme.bodySmall?.copyWith(color: colors.error),
        prefixStyle: textTheme.bodyLarge?.copyWith(color: colors.textPrimary),
        suffixStyle: textTheme.bodyLarge?.copyWith(color: colors.textPrimary),
      );

  @override
  ThemeData get theme => ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: colors.background,
        appBarTheme: AppBarTheme(backgroundColor: colors.background),
        checkboxTheme: checkboxThemeData,
        filledButtonTheme: filledButtonThemeData,
        outlinedButtonTheme: outlinedButtonThemeData,
        inputDecorationTheme: inputDecorationTheme,
      );
}

class GreenColor extends AppColors {
  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get primaryColor => const Color(0xFF4CAF50); // Green Primary

  @override
  Color get secondaryColor => const Color(0xFF388E3C); // Darker Green

  @override
  Color get tertiaryColor => const Color(0xFFA5D6A7); // Light Green Accent

  @override
  Color get surface => const Color(0xFFE8F5E9);

  @override
  Color get containerSurface => const Color(0xFFF5F5F9);

  @override
  Color get error => const Color(0xFFD32F2F);

  @override
  Color get success => const Color(0xFF4CAF50);

  @override
  Color get warning => const Color(0xFFFFC107);

  @override
  Color get textPrimary => const Color(0xFF1B5E20); // Deep Green for Text

  @override
  Color get textSecondary => const Color(0xFF81C784); // Soft Green Text

  @override
  Color get textTertiary => const Color(0xFFFFF9C4); // Yellow-Green Accent

  @override
  Color get white => const Color(0xFFFFFFFF);

  @override
  Color get socialButton => const Color(0xFF66BB6A);

  @override
  Color get cardBackground => const Color(0xFFFFC97E);
}

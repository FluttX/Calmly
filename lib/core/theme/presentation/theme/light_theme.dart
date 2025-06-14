import 'package:calmly/core/theme/theme.dart';
import 'package:flutter/material.dart';

class LightTheme extends AppTheme {
  @override
  AppColors get colors => LightColor();

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
        fillColor: colors.surface, // Background color
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
          borderSide: BorderSide(color: colors.error, width: 1.5),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: colors.error, width: 1.5),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: colors.textSecondary..withValues(alpha: 0.5),
          ),
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
  TabBarThemeData get tabBarTheme => TabBarThemeData(
        indicatorColor: colors.primaryColor,
        indicatorSize: TabBarIndicatorSize.label,
        dividerColor: const Color(0xFFE4E6FD),
        dividerHeight: 1,
        labelColor: colors.primaryColor,
        labelStyle: textTheme.bodyLarge,
        unselectedLabelColor: colors.textSecondary,
        unselectedLabelStyle: textTheme.bodyLarge,
      );

  @override
  DividerThemeData get dividerThemeData => DividerThemeData(
        color: colors.divider,
        thickness: 0.5,
        space: 1,
        indent: 0,
        endIndent: 0,
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
        tabBarTheme: tabBarTheme,
        dividerTheme: dividerThemeData,
      );
}

class LightColor extends AppColors {
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
  Color get containerSurface => const Color(0xFFF5F5F9);

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

  @override
  Color get cardBackground => const Color(0xFFFFC97E);

  @override
  Color get iconBackground => const Color(0xFF03174C)..withValues(alpha: 0.5);

  @override
  Color get divider => const Color(0xFFADB8D9);

  @override
  Color get secondaryBackground => const Color(0xFF03174C);
}

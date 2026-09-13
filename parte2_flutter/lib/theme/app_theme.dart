import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_colors.dart';

abstract final class AppTheme {
  static ThemeData get light {
    final base = ColorScheme.fromSeed(
      seedColor: AppColors.navy,
      brightness: Brightness.light,
      primary: AppColors.navy,
      onPrimary: AppColors.textOnNavy,
      primaryContainer: AppColors.navyLight,
      onPrimaryContainer: AppColors.navyDark,
      secondary: AppColors.navyMuted,
      onSecondary: AppColors.textOnNavy,
      surface: AppColors.surface,
      onSurface: AppColors.textPrimary,
      onSurfaceVariant: AppColors.textSecondary,
      outline: AppColors.gray300,
      outlineVariant: AppColors.gray100,
      shadow: AppColors.shadow,
      scrim: AppColors.ink.withValues(alpha: 0.4),
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: base,
      scaffoldBackgroundColor: AppColors.surfaceSunken,
      canvasColor: AppColors.surface,
      dividerColor: AppColors.divider,
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.surfaceSunken,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        titleTextStyle: TextStyle(
          color: AppColors.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.2,
        ),
      ),
      cardTheme: CardThemeData(
        color: AppColors.surfaceCard,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        shadowColor: AppColors.shadow.withValues(alpha: 0.12),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: AppColors.navy,
        foregroundColor: AppColors.textOnNavy,
        elevation: 4,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.whiteSoft,
        labelStyle: const TextStyle(color: AppColors.textSecondary),
        hintStyle: const TextStyle(color: AppColors.textMuted),
        prefixIconColor: AppColors.navyMuted,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.gray200),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.gray200),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.navy, width: 1.5),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimary),
        displayMedium: TextStyle(color: AppColors.textPrimary),
        headlineMedium: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
        titleLarge: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
        titleMedium: TextStyle(
          color: AppColors.textPrimary,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(color: AppColors.textPrimary),
        bodyMedium: TextStyle(color: AppColors.textSecondary),
        labelMedium: TextStyle(color: AppColors.textMuted),
      ),
    );
  }
}

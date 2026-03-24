import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/core/themes/app_colors.dart';
import 'package:movie_info_app/ui/core/themes/app_text_styles.dart';

class AppTheme {
  AppTheme._();
 
  static ThemeData get dark {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: AppColors.backgroundPrimary,
      primaryColor: AppColors.accentPrimary,
 
      colorScheme: const ColorScheme.dark(
        primary:          AppColors.accentPrimary,
        onPrimary:        AppColors.buttonPrimaryText,
        secondary:        AppColors.accentSecondary,
        onSecondary:      AppColors.textPrimary,
        surface:          AppColors.backgroundSecondary,
        onSurface:        AppColors.textPrimary,
        error:            AppColors.dangerForeground,
        onError:          AppColors.dangerBackground,
        outline:          AppColors.borderSubtle,
      ),
 
      // App bar
      appBarTheme: const AppBarTheme(
        backgroundColor:  AppColors.backgroundPrimary,
        foregroundColor:  AppColors.textPrimary,
        elevation:        0,
        centerTitle:      false,
        titleTextStyle:   AppTextStyles.titleLarge,
      ),
 
      // Bottom navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor:      AppColors.navBackground,
        selectedItemColor:    AppColors.navIconActive,
        unselectedItemColor:  AppColors.navIconInactive,
        elevation:            0,
        type:                 BottomNavigationBarType.fixed,
        selectedLabelStyle:   TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
        unselectedLabelStyle: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
      ),
 
      // Cards
      cardTheme: CardThemeData(
        color:        const Color(0x9C9C9C9C),
        elevation:    0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: const BorderSide(color: AppColors.borderSubtle, width: 0.5),
        ),
        margin: const EdgeInsets.only(bottom: 12),
      ),
 
      // Elevated button (primary gold)
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor:   AppColors.buttonPrimary,
          foregroundColor:   AppColors.buttonPrimaryText,
          elevation:         0,
          padding:           const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle:         const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
 
      // Outlined button (ghost)
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor:   AppColors.accentPrimary,
          backgroundColor:   AppColors.buttonSecondaryBg,
          side: const BorderSide(color: AppColors.buttonSecondaryBorder, width: 0.5),
          padding:           const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
          textStyle:         const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
 
      // Text button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.accentPrimary,
          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
      ),
 
      // Divider
      dividerTheme: const DividerThemeData(
        color:     AppColors.borderSubtle,
        thickness: 0.5,
        space:     0,
      ),
 
      // Icon
      iconTheme: const IconThemeData(
        color: AppColors.navIconInactive,
        size:  22,
      ),
 
      // Input
      inputDecorationTheme: InputDecorationTheme(
        filled:           true,
        fillColor:        AppColors.backgroundSecondary,
        hintStyle:        const TextStyle(color: AppColors.textSecondary, fontSize: 14),
        contentPadding:   const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.borderSubtle, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.borderSubtle, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: AppColors.accentPrimary, width: 1),
        ),
      ),
 
      // Text
      textTheme: const TextTheme(
        displayLarge:  AppTextStyles.displayLarge,
        titleLarge:    AppTextStyles.titleLarge,
        titleMedium:   AppTextStyles.titleMedium,
        bodyMedium:    AppTextStyles.bodyMedium,
        bodySmall:     AppTextStyles.bodySmall,
        labelSmall:    AppTextStyles.labelSmall,
      ),
    );
  }
}
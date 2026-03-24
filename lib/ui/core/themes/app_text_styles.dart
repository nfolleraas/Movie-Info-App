import 'package:flutter/material.dart';
import 'package:movie_info_app/ui/core/themes/app_colors.dart';

class AppTextStyles {
  AppTextStyles._();
 
  static const TextStyle displayLarge = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
    letterSpacing: -0.5,
  );
 
  static const TextStyle titleLarge = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
 
  static const TextStyle titleMedium = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.textPrimary,
  );
 
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );
 
  static const TextStyle bodySmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
    height: 1.5,
  );
 
  static const TextStyle labelSmall = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w500,
    color: AppColors.accentPrimary,
    letterSpacing: 0.08,
  );
 
  static const TextStyle cardTitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w500,
    color: AppColors.textOnCard,
  );
 
  static const TextStyle cardBody = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.textOnCard,
    height: 1.5,
  );
 
  static const TextStyle cardMeta = TextStyle(
    fontSize: 11,
    fontWeight: FontWeight.w400,
    color: AppColors.textOnCardMuted,
  );
}
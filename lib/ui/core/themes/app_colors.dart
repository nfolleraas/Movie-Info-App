import 'package:flutter/material.dart';

class AppColors {
  AppColors._();
 
  // Backgrounds
  static const Color backgroundPrimary   = Color(0xFF12100A); // warm near-black
  static const Color backgroundSecondary = Color(0xFF1A1710); // surfaces, bottom sheets
  static const Color backgroundCard      = Color(0x9C9C9C9C); // #9C9C9C @ ~75% — use with opacity
 
  // Accent — Gold
  static const Color accentPrimary       = Color(0xFFC8A45A); // primary gold
  static const Color accentSecondary     = Color(0xFF8C6A2E); // muted bronze
  static const Color accentStar          = Color(0xFFE8B84B); // star / rating gold
 
  // Text
  static const Color textPrimary         = Color(0xFFE8E6E1); // warm white — headings
  static const Color textSecondary       = Color(0xFF9C9A96); // descriptions, meta
  static const Color textOnCard          = Color(0xFF262626); // dark text on frosted card
  static const Color textOnCardMuted     = Color(0xFF5A5652); // muted text on frosted card
 
  // Navigation
  static const Color navBackground       = Color(0xFF111109); // slightly deeper than bg
  static const Color navIconActive       = Color(0xFFC8A45A); // gold for selected tab
  static const Color navIconInactive     = Color(0xFF5E5C58); // dimmed for unselected
 
  // Buttons
  static const Color buttonPrimary       = Color(0xFFC8A45A); // gold fill
  static const Color buttonPrimaryText   = Color(0xFF1A1100); // dark label on gold
  static const Color buttonSecondaryBg   = Color(0xFF2A2A2E); // ghost bg
  static const Color buttonSecondaryBorder = Color(0x66C8A45A); // gold border @ ~40%
 
  // Borders
  static const Color borderSubtle        = Color(0x26C8A45A); // gold tint @ 15%
  static const Color borderMedium        = Color(0x40C8A45A); // gold tint @ 25%
 
  // Semantic
  static const Color successBackground   = Color(0xFF1C3A2A);
  static const Color successForeground   = Color(0xFF5BCB8A);
  static const Color dangerBackground    = Color(0xFF3A1C1C);
  static const Color dangerForeground    = Color(0xFFE26060);
  static const Color warningBackground   = Color(0xFF2E2618);
  static const Color warningForeground   = Color(0xFFE8B84B);
}
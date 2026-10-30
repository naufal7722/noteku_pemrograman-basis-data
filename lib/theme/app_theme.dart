import 'package:flutter/material.dart';

/// Tema warna dan estetika visual modern CatatanKu (Tema Crimson Velvet & Ruby Red)
class AppTheme {
  // Palet Warna Utama - Merah Crimson & Velvet Modern
  static const Color primary = Color(0xFFC62828); // Vibrant Crimson Red
  static const Color primaryDark = Color(0xFF8E0000); // Deep Wine / Dark Crimson
  static const Color primaryLight = Color(0xFFFF5F52); // Bright Coral Red
  static const Color primaryAccent = Color(0xFFFF334B); // Neon Rose Crimson
  
  // Warna Latar & Permukaan Halus
  static const Color background = Color(0xFFF9F6F6); // Soft Porcelain Warm Tint
  static const Color surface = Colors.white;
  static const Color cardBg = Color(0xFFFFFFFF);
  static const Color surfaceElevated = Color(0xFFFFF7F7);

  // Variasi Warna Merah Lembut untuk Badge, Aksen & Kontainer
  static const Color primaryBadgeBg = Color(0xFFFFEAEB); // Soft Rose Tint
  static const Color primaryBorder = Color(0xFFFFCDD2); // Border Merah Lembut
  static const Color crimsonGlow = Color(0x33C62828); // Shadow Glow Merah

  // Warna Netral & Tipografi
  static const Color textPrimary = Color(0xFF1E1B1B); // Rich Obsidian
  static const Color textSecondary = Color(0xFF686060); // Slate Charcoal
  static const Color textLight = Color(0xFFA59D9D); // Muted Ash
  static const Color border = Color(0xFFECE6E6); // Clean subtle divider
  static const Color borderSubtle = Color(0xFFF4ECEC);

  // Tingkat Prioritas
  static const Color priorityHigh = Color(0xFFD32F2F); // High - Crimson Red
  static const Color priorityMedium = Color(0xFFF57C00); // Medium - Amber Orange
  static const Color priorityLow = Color(0xFF2E7D32); // Low - Emerald Green

  // Pilihan Warna Catatan (Warna-warna estetis modern)
  static const List<Map<String, dynamic>> noteColorOptions = [
    {
      'name': 'Ruby Rose',
      'color': Color(0xFFFFEBEE),
      'border': Color(0xFFFFCDD2),
      'accent': Color(0xFFC62828),
    },
    {
      'name': 'Sunset Peach',
      'color': Color(0xFFFFF3E0),
      'border': Color(0xFFFFE0B2),
      'accent': Color(0xFFE65100),
    },
    {
      'name': 'Golden Honey',
      'color': Color(0xFFFFFDE7),
      'border': Color(0xFFFFF9C4),
      'accent': Color(0xFFF57F17),
    },
    {
      'name': 'Sage Mint',
      'color': Color(0xFFE8F5E9),
      'border': Color(0xFFC8E6C9),
      'accent': Color(0xFF2E7D32),
    },
    {
      'name': 'Sky Breeze',
      'color': Color(0xFFE1F5FE),
      'border': Color(0xFFB3E5FC),
      'accent': Color(0xFF0277BD),
    },
    {
      'name': 'Velvet Orchid',
      'color': Color(0xFFF3E5F5),
      'border': Color(0xFFE1BEE7),
      'accent': Color(0xFF6A1B9A),
    },
  ];

  static List<Color> get noteColors =>
      noteColorOptions.map((e) => e['color'] as Color).toList();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        onPrimary: Colors.white,
        primaryContainer: primaryBadgeBg,
        onPrimaryContainer: primaryDark,
        surface: surface,
        surfaceTint: Colors.transparent,
      ),
      scaffoldBackgroundColor: background,
      fontFamily: 'Roboto',
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        foregroundColor: textPrimary,
        elevation: 0,
        centerTitle: false,
        titleTextStyle: TextStyle(
          color: textPrimary,
          fontSize: 19,
          fontWeight: FontWeight.w800,
          letterSpacing: -0.3,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white,
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border, width: 1.2),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: border, width: 1.2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primary, width: 1.8),
        ),
        hintStyle: const TextStyle(
          color: textLight,
          fontSize: 14,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.3,
          ),
        ),
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: border, width: 1),
        ),
      ),
    );
  }
}

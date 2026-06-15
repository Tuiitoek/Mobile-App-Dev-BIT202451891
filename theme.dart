import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color(0xFF2E7D32),
        primary: const Color(0xFF2E7D32),
        secondary: const Color(0xFFFF9800),
        surface: const Color(0xFFF8F5F0),
      ),
      fontFamily: GoogleFonts.inter().fontFamily,
      scaffoldBackgroundColor: const Color(0xFFF8F5F0),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Color(0xFF1F2A1F),
        iconTheme: IconThemeData(color: Color(0xFF1F2A1F)),
      ),
      cardTheme: CardThemeData(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF2E7D32),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          padding: const EdgeInsets.symmetric(vertical: 16),
        ),
      ),
    );
  }
}
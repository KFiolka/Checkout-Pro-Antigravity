import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Deep Focus Color Palette
  static const Color oledBlack = Color(0xFF000000);
  static const Color neonCyan = Color(0xFF00FFFF);
  static const Color neonMagenta = Color(0xFFFF00FF);
  static const Color highContrastWhite = Color(0xFFFFFFFF);
  static const Color mutedCharcoal = Color(0xFF1A1A1A);
  static const Color glassWhite = Color(0x1AFFFFFF); // 10% Opacity

  static const double borderRadius = 12.0;

  // Neon Shadows
  static List<BoxShadow> get neonCyanGlow => [
        BoxShadow(
          color: neonCyan.withOpacity(0.6),
          blurRadius: 15,
          spreadRadius: -5,
        ),
      ];
      
  static List<BoxShadow> get neonMagentaGlow => [
        BoxShadow(
          color: neonMagenta.withOpacity(0.6),
          blurRadius: 15,
          spreadRadius: -5,
        ),
      ];

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: oledBlack,
      primaryColor: neonCyan,
      
      // Define Color Scheme
      colorScheme: const ColorScheme.dark(
        primary: neonCyan,
        secondary: neonMagenta,
        surface: mutedCharcoal,
        background: oledBlack,
        onSurface: highContrastWhite,
      ),

      // Text Theme
      textTheme: TextTheme(
        displayLarge: GoogleFonts.spaceGrotesk(
          color: neonCyan,
          fontSize: 80,
          fontWeight: FontWeight.w900,
          letterSpacing: -2.0,
        ), // Hero Scores
        displayMedium: GoogleFonts.spaceGrotesk(
          color: highContrastWhite,
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ), 
        headlineLarge: GoogleFonts.spaceGrotesk(
          color: highContrastWhite,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: GoogleFonts.spaceGrotesk(
          color: neonCyan,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: GoogleFonts.spaceGrotesk(
          color: highContrastWhite,
          fontSize: 18,
        ),
        bodyMedium: GoogleFonts.spaceGrotesk(
          color: highContrastWhite.withOpacity(0.8),
          fontSize: 16,
        ),
        labelLarge: GoogleFonts.spaceGrotesk(
          color: oledBlack,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: neonCyan,
          foregroundColor: oledBlack,
          shadowColor: neonCyan,
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
          textStyle: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: neonCyan,
          side: const BorderSide(color: neonCyan, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
           textStyle: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

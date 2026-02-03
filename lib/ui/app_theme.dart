import 'package:flutter/material.dart';

class AppTheme {
  static const Color oledBlack = Color(0xFF000000);
  static const Color neonCyan = Color(0xFF00FFFF);
  static const Color neonMagenta = Color(0xFFFF00FF);
  static const Color highContrastWhite = Color(0xFFFFFFFF);
  static const Color mutedCharcoal = Color(0xFF1A1A1A);

  static const double borderRadius = 8.0;

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: oledBlack,
      primaryColor: neonCyan,
      colorScheme: const ColorScheme.dark(
        primary: neonCyan,
        secondary: neonMagenta,
        surface: oledBlack,
        onSurface: highContrastWhite,
      ),
      fontFamily: 'Space Grotesk', // Assuming font is available or fallback
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: highContrastWhite,
          fontSize: 48,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: neonCyan,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
        bodyLarge: TextStyle(
          color: highContrastWhite,
          fontSize: 16,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: oledBlack,
          foregroundColor: neonCyan,
          side: const BorderSide(color: neonCyan, width: 2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

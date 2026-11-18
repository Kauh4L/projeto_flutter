import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Color(0xFF1976D2);
  static const Color primaryLight = Color(0xFFE3F2FD);
  static const Color onPrimary = Colors.white;
  static const Color text = Color(0xFF263238);
  static const Color surface = Colors.white;

  static const double appBarHeight = 56;
  static const double categoryRadius = 30;
  static const double cardRadius = 12;
  static const double buttonRadius = 10;
  static const double pageSpacing = 10;
  static const double iconSize = 24;
  static const double categoryIconSize = 20;
  static const double elevation = 4;
  static const double shadowColor = 4; // Adicione esta linha

  static ThemeData get light {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.light,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: surface,
      iconTheme: const IconThemeData(
        color: text,
        size: iconSize,
      ),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(color: text),
        titleLarge: TextStyle(
          color: text,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: primary,
        foregroundColor: onPrimary,
        iconTheme: IconThemeData(
          color: onPrimary,
          size: iconSize,
        ),
        centerTitle: true,
        elevation: 2,
        toolbarHeight: appBarHeight,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          elevation: 6,
          shadowColor: Colors.black,
          minimumSize: const Size(120, 48),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(buttonRadius),
          ),
        ),
      ),
      iconButtonTheme: IconButtonThemeData(
        style: IconButton.styleFrom(
          foregroundColor: onPrimary,
          iconSize: iconSize,
        ),
      ),
      cardTheme: CardThemeData(
        color: surface,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(cardRadius),
        ),
      ),
    );
  }
}

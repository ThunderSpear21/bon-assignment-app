import 'package:bon_assignment_app/theme/app_colours.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ColorScheme lightColourScheme = ColorScheme.fromSeed(
    seedColor: AppColours.lightSeedColour,
    brightness: Brightness.light,
  );

  static final ColorScheme darkColourScheme = ColorScheme.fromSeed(
    seedColor: AppColours.darkSeedColour,
    brightness: Brightness.dark,
  );

  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: lightColourScheme,
    fontFamily: 'EpundaSlab',
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: lightColourScheme.onSurface),
      bodyMedium: TextStyle(color: lightColourScheme.onSurface),
      bodySmall: TextStyle(color: lightColourScheme.onSurface),
      labelSmall: TextStyle(color: lightColourScheme.onSurface),
      displaySmall: TextStyle(color: lightColourScheme.onSurface),
      displayMedium: TextStyle(color: lightColourScheme.onSurface),
      labelMedium: TextStyle(color: lightColourScheme.onSurface),
      headlineMedium: TextStyle(color: lightColourScheme.onSurface),
      titleLarge: TextStyle(color: lightColourScheme.onSurface),
      titleMedium: TextStyle(color: lightColourScheme.onSurface),
    ),
    scaffoldBackgroundColor: lightColourScheme.surface,
    cardColor: lightColourScheme.surface,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: lightColourScheme.onSurface.withValues(alpha: 0.6),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: lightColourScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: lightColourScheme.primary),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColourScheme.primary,
        foregroundColor: lightColourScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        elevation: 2,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColourScheme.surface,
      foregroundColor: lightColourScheme.onSurface,
    ),
  );

  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: darkColourScheme,
    fontFamily: 'EpundaSlab',
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: darkColourScheme.onSurface),
      bodyMedium: TextStyle(color: darkColourScheme.onSurface),
      bodySmall: TextStyle(color: darkColourScheme.onSurface),
      displaySmall: TextStyle(color: darkColourScheme.onSurface),
      displayMedium: TextStyle(color: darkColourScheme.onSurface),
      displayLarge: TextStyle(color: darkColourScheme.onSurface),
      labelSmall: TextStyle(color: darkColourScheme.onSurface),
      labelMedium: TextStyle(color: darkColourScheme.onSurface),
      labelLarge: TextStyle(color: darkColourScheme.onSurface),
      headlineLarge: TextStyle(color: darkColourScheme.onSurface),
      headlineSmall: TextStyle(color: darkColourScheme.onSurface),
      headlineMedium: TextStyle(color: darkColourScheme.onSurface),
      titleSmall: TextStyle(color: darkColourScheme.onSurface),
      titleLarge: TextStyle(color: darkColourScheme.onSurface),
      titleMedium: TextStyle(color: darkColourScheme.onSurface),
    ),
    scaffoldBackgroundColor: darkColourScheme.surface,
    cardColor: darkColourScheme.surface,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyle(
        color: darkColourScheme.onSurface.withValues(alpha: 0.6),
        fontSize: 14,
        fontWeight: FontWeight.w400,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkColourScheme.outline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: darkColourScheme.primary),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColourScheme.primary,
        foregroundColor: darkColourScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        elevation: 2,
      ),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkColourScheme.surface,
      foregroundColor: darkColourScheme.onSurface,
    ),
  );
}

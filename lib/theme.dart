import 'package:flutter/material.dart';


class GradLinkColors {
  static const primary = Color(0xFF1E88E5);      // Blue
  static const secondary = Color(0xFFFFA726);    // Orange
  static const background = Color(0xFFF5F5F5);   // Light grey screen background
  static const card = Colors.white;              // White cards
  static const textPrimary = Colors.black87;     // Almost black text
  static const textSecondary = Colors.black54;   // Medium grey text
}


class GradLinkTextStyles {
  static const headline = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: GradLinkColors.textPrimary,
  );

  static const subtitle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: GradLinkColors.textSecondary,
  );

  static const body = TextStyle(
    fontSize: 14,
    color: GradLinkColors.textPrimary,
  );
}


class GradLinkButtonStyles {
  static final ButtonStyle primaryButton = ElevatedButton.styleFrom(
    backgroundColor: GradLinkColors.primary,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );

  static final ButtonStyle secondaryButton = OutlinedButton.styleFrom(
    foregroundColor: GradLinkColors.primary,
    side: const BorderSide(color: GradLinkColors.primary),
    padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
  );
}

// ---------------------------------------------------------
// CARD DECORATION
// ---------------------------------------------------------
BoxDecoration gradCardDecoration() {
  return BoxDecoration(
    color: GradLinkColors.card,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
      BoxShadow(
        color: Colors.black12,
        blurRadius: 4,
        offset: Offset(0, 2),
      ),
    ],
  );
}

// ---------------------------------------------------------
// INPUT FIELD DECORATION
// ---------------------------------------------------------
InputDecoration gradInputDecoration(String labelText, [String? hintText]) {
  return InputDecoration(
    labelText: labelText,
    hintText: hintText,
    filled: true,
    fillColor: Colors.white,
    contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Colors.grey.shade300),
    ),
    focusedBorder: const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(12)),
      borderSide: BorderSide(
        color: GradLinkColors.primary,
        width: 2,
      ),
    ),
  );
}

// ---------------------------------------------------------
// MAIN THEME DATA (used in MaterialApp)
// ---------------------------------------------------------
ThemeData gradLinkTheme() {
  return ThemeData(
    primaryColor: GradLinkColors.primary,
    scaffoldBackgroundColor: GradLinkColors.background,

    appBarTheme: const AppBarTheme(
      backgroundColor: GradLinkColors.primary,
      foregroundColor: Colors.white,
      elevation: 2,
      titleTextStyle: GradLinkTextStyles.headline,
    ),

    textTheme: const TextTheme(
      titleLarge: GradLinkTextStyles.headline,
      titleMedium: GradLinkTextStyles.subtitle,
      bodyMedium: GradLinkTextStyles.body,
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: GradLinkButtonStyles.primaryButton,
    ),

    outlinedButtonTheme: OutlinedButtonThemeData(
      style: GradLinkButtonStyles.secondaryButton,
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.white,
      contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.grey.shade300),
      ),
      focusedBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        borderSide: BorderSide(color: GradLinkColors.primary, width: 2),
      ),
    ),
  );
}

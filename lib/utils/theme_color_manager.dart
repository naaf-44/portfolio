import 'package:flutter/material.dart';
import 'theme_color_manager_web.dart'
    if (dart.library.io) 'theme_color_manager_stub.dart';

class ThemeColorManager {
  /// Updates the browser's theme color to match the Flutter app's background
  static void updateThemeColor(Color backgroundColor) {
    ThemeColorManagerWeb.updateThemeColor(backgroundColor);
  }

  /// Updates theme color based on the current Flutter theme
  static void updateFromTheme(ThemeData theme) {
    updateThemeColor(theme.scaffoldBackgroundColor);
  }

  /// Updates theme color based on BuildContext
  static void updateFromContext(BuildContext context) {
    final theme = Theme.of(context);
    updateFromTheme(theme);
  }

  /// Converts a Flutter Color to hex string format
  static String colorToHex(Color color) {
    // Convert each component (r, g, b) to 0-255 integer
    int r = (color.r * 255).round() & 0xff;
    int g = (color.g * 255).round() & 0xff;
    int b = (color.b * 255).round() & 0xff;

    // Return hex string without alpha (like #RRGGBB)
    return '#'
        '${r.toRadixString(16).padLeft(2, '0')}'
        '${g.toRadixString(16).padLeft(2, '0')}'
        '${b.toRadixString(16).padLeft(2, '0')}';
  }

  /// Sets up automatic theme color updates when the theme changes
  static void setupAutoUpdate(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      updateFromContext(context);
    });
  }

  /// Updates theme color for light mode
  static void setLightTheme() {
    updateThemeColor(const Color(0xFFF5F5F5)); // Light background
  }

  /// Updates theme color for dark mode
  static void setDarkTheme() {
    updateThemeColor(const Color(0xFF121212)); // Dark background
  }

  /// Automatically detects and sets theme based on system preference
  static void setSystemTheme(BuildContext context) {
    final brightness = MediaQuery.of(context).platformBrightness;
    if (brightness == Brightness.dark) {
      setDarkTheme();
    } else {
      setLightTheme();
    }
  }
}

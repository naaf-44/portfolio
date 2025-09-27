import 'package:flutter/material.dart';
import 'package:web/web.dart' as web;

class ThemeColorManagerWeb {
  static const String _themeColorMetaId = 'theme-color-meta';
  static const String _msThemeColorMetaId = 'ms-theme-color-meta';
  static const String _appleStatusBarMetaId = 'apple-status-bar-meta';

  /// Updates the browser's theme color to match the Flutter app's background
  static void updateThemeColor(Color backgroundColor) {
    final String hexColor = _colorToHex(backgroundColor);

    try {
      // Update standard theme-color meta tag
      final themeColorMeta = web.document.getElementById(_themeColorMetaId);
      if (themeColorMeta != null) {
        themeColorMeta.setAttribute('content', hexColor);
      }

      // Update Microsoft-specific theme color
      final msThemeColorMeta = web.document.getElementById(_msThemeColorMetaId);
      if (msThemeColorMeta != null) {
        msThemeColorMeta.setAttribute('content', hexColor);
      }

      // Update Apple status bar style based on brightness
      final appleStatusBarMeta = web.document.getElementById(
        _appleStatusBarMetaId,
      );
      if (appleStatusBarMeta != null) {
        final brightness = ThemeData.estimateBrightnessForColor(
          backgroundColor,
        );
        final statusBarStyle =
            brightness == Brightness.dark ? 'black-translucent' : 'default';
        appleStatusBarMeta.setAttribute('content', statusBarStyle);
      }
    } catch (e) {
      debugPrint('ThemeColorManager: Error updating theme color: $e');
    }
  }

  /// Converts a Flutter Color to hex string format
  static String _colorToHex(Color color) {
    int r = (color.r * 255).round() & 0xff;
    int g = (color.g * 255).round() & 0xff;
    int b = (color.b * 255).round() & 0xff;

    return '#'
        '${r.toRadixString(16).padLeft(2, '0')}'
        '${g.toRadixString(16).padLeft(2, '0')}'
        '${b.toRadixString(16).padLeft(2, '0')}';
  }
}

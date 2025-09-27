import 'package:flutter/material.dart';
import '../utils/theme_color_manager.dart';

class ThemeColorWrapper extends StatefulWidget {
  final Widget child;
  final bool autoUpdate;

  const ThemeColorWrapper({
    super.key,
    required this.child,
    this.autoUpdate = true,
  });

  @override
  State<ThemeColorWrapper> createState() => _ThemeColorWrapperState();
}

class _ThemeColorWrapperState extends State<ThemeColorWrapper>
    with WidgetsBindingObserver {
  
  @override
  void initState() {
    super.initState();
    if (widget.autoUpdate) {
      WidgetsBinding.instance.addObserver(this);
      // Update theme color on first build
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _updateThemeColor();
      });
    }
  }

  @override
  void dispose() {
    if (widget.autoUpdate) {
      WidgetsBinding.instance.removeObserver(this);
    }
    super.dispose();
  }

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    if (widget.autoUpdate) {
      _updateThemeColor();
    }
  }

  @override
  void didUpdateWidget(ThemeColorWrapper oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.autoUpdate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _updateThemeColor();
      });
    }
  }

  void _updateThemeColor() {
    if (mounted) {
      ThemeColorManager.updateFromContext(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Update theme color whenever the widget rebuilds
    if (widget.autoUpdate) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _updateThemeColor();
      });
    }
    
    return widget.child;
  }
}
# Dynamic Theme Color Setup for Mobile Browsers

This setup automatically matches your Flutter app's background color with the mobile browser's status bar/safe area color using the `<meta name="theme-color">` tag.

## 🎯 **What's Included**

### 1. **Updated web/index.html**
```html
<!-- Theme color for mobile browsers -->
<meta name="theme-color" content="#F5F5F5" id="theme-color-meta">
<meta name="msapplication-navbutton-color" content="#F5F5F5" id="ms-theme-color-meta">
<meta name="apple-mobile-web-app-status-bar-style" content="default" id="apple-status-bar-meta">
```

### 2. **ThemeColorManager Utility**
- `lib/utils/theme_color_manager.dart` - Main utility class
- `lib/utils/theme_color_manager_web.dart` - Web-specific implementation
- `lib/utils/theme_color_manager_stub.dart` - Stub for non-web platforms

### 3. **ThemeColorWrapper Widget**
- `lib/widgets/theme_color_wrapper.dart` - Automatic theme color updates

## 🚀 **Usage Examples**

### **Method 1: Automatic Updates (Recommended)**
```dart
// In main.dart
MaterialApp(
  theme: AppTheme.lightTheme,
  darkTheme: AppTheme.darkTheme,
  themeMode: ThemeMode.system,
  home: ThemeColorWrapper(
    child: YourHomeScreen(),
  ),
)
```

### **Method 2: Manual Updates**
```dart
import 'package:your_app/utils/theme_color_manager.dart';

// Update to specific color
ThemeColorManager.updateThemeColor(Colors.blue);

// Update from current theme
ThemeColorManager.updateFromContext(context);

// Quick theme updates
ThemeColorManager.setLightTheme(); // Sets to #F5F5F5
ThemeColorManager.setDarkTheme();  // Sets to #121212
```

### **Method 3: Theme Toggle Integration**
```dart
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light 
          ? ThemeMode.dark 
          : ThemeMode.light;
    });
    
    // Update browser theme color
    if (_themeMode == ThemeMode.dark) {
      ThemeColorManager.setDarkTheme();
    } else {
      ThemeColorManager.setLightTheme();
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: _themeMode,
      home: ThemeColorWrapper(
        child: HomeScreen(onThemeToggle: _toggleTheme),
      ),
    );
  }
}
```

## 🎨 **Theme Colors Used**

### **Light Theme**
- Background: `#F5F5F5` (AppTheme.backgroundColor)
- Status Bar Style: `default` (dark text on light background)

### **Dark Theme**
- Background: `#121212` (AppTheme.darkBackgroundColor)
- Status Bar Style: `black-translucent` (light text on dark background)

## 📱 **Browser Support**

| Browser | Meta Tag | Support |
|---------|----------|---------|
| Chrome (Android) | `theme-color` | ✅ Full |
| Safari (iOS) | `apple-mobile-web-app-status-bar-style` | ✅ Full |
| Edge (Mobile) | `msapplication-navbutton-color` | ✅ Full |
| Firefox (Mobile) | `theme-color` | ✅ Partial |

## 🔧 **API Reference**

### **ThemeColorManager Methods**

```dart
// Core methods
static void updateThemeColor(Color backgroundColor)
static void updateFromTheme(ThemeData theme)
static void updateFromContext(BuildContext context)

// Convenience methods
static void setLightTheme()
static void setDarkTheme()
static void setSystemTheme(BuildContext context)

// Utility methods
static String colorToHex(Color color)
static void setupAutoUpdate(BuildContext context)
```

### **ThemeColorWrapper Properties**

```dart
ThemeColorWrapper({
  required Widget child,
  bool autoUpdate = true, // Automatically update on theme changes
})
```

## 🎯 **How It Works**

1. **HTML Setup**: Meta tags in `web/index.html` define initial theme colors
2. **Flutter Detection**: `ThemeColorManager` detects theme changes
3. **DOM Updates**: JavaScript updates meta tag `content` attributes
4. **Browser Response**: Mobile browsers update status bar/safe area colors

## 🔄 **Automatic Updates**

The `ThemeColorWrapper` widget automatically:
- Updates theme color when the widget rebuilds
- Listens for system theme changes
- Handles platform brightness changes
- Works with `ThemeMode.system` for automatic light/dark switching

## 🛠️ **Customization**

### **Custom Colors**
```dart
// Use your own colors
ThemeColorManager.updateThemeColor(Color(0xFF1976D2));

// Or update your AppTheme colors
class AppTheme {
  static const Color backgroundColor = Color(0xFFYOUR_COLOR);
  static const Color darkBackgroundColor = Color(0xFFYOUR_DARK_COLOR);
}
```

### **Custom Status Bar Styles**
Modify the `updateThemeColor` method in `theme_color_manager_web.dart` to use different status bar styles:

```dart
// Always use light content
appleStatusBarMeta.setAttribute('content', 'black-translucent');

// Always use dark content  
appleStatusBarMeta.setAttribute('content', 'default');
```

## ✅ **Testing**

1. **Desktop**: Open browser dev tools → Toggle device toolbar → Select mobile device
2. **Mobile**: Open your Flutter web app on a mobile browser
3. **Theme Toggle**: Switch between light/dark themes and observe status bar color changes
4. **System Theme**: Change system theme and observe automatic updates (if using `ThemeMode.system`)

The theme color will now automatically match your Flutter app's background color across all supported mobile browsers! 🎉
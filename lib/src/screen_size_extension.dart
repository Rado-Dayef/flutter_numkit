import 'package:flutter/material.dart';

/// A collection of handy extensions on `num` to simplify responsive sizing in Flutter.
///
/// Example usage:
/// ```dart
/// double halfScreenWidth = 50.ofWidth(context);      // 50% of screen width
/// double quarterScreenHeight = 25.ofHeight(context); // 25% of screen height
/// ```
extension ScreenNumsExtensions on num {
  /// Calculates a percentage of the screen width based on the number.
  /// Usage: `50.ofWidth(context)` → 50% of screen width
  double ofWidth(BuildContext context) => (toDouble() / 100) * MediaQuery.of(context).size.width;

  /// Calculates a percentage of the screen height based on the number.
  /// Usage: `25.ofHeight(context)` → 25% of screen height
  double ofHeight(BuildContext context) => (toDouble() / 100) * MediaQuery.of(context).size.height;
}

///
/// Example usage:
/// ```dart
/// final width = context.screenWidth;
/// final height = context.screenHeight;
/// context.hideKeyboard;
/// final isDarkMode = context.isDark;
/// final theme = context.theme;
/// ```
extension ScreenContextExtensions on BuildContext {
  /// Returns the current [ThemeData] from the context.
  /// Usage: `context.theme`
  ThemeData get theme => Theme.of(this);

  /// Hides the keyboard by removing focus from the current focus node.
  /// Usage: `context.hideKeyboard`
  void get hideKeyboard => FocusScope.of(this).unfocus();

  /// Returns the full screen width in logical pixels.
  /// Usage: `context.screenWidth`
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Returns the full screen height in logical pixels.
  /// Usage: `context.screenHeight`
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Returns `true` if the current theme brightness is dark.
  /// Usage: `context.isDark`
  bool get isDark => Theme.of(this).brightness == Brightness.dark;
}

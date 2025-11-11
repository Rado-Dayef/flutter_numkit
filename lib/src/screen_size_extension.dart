import 'package:flutter/material.dart';

/// A collection of handy extensions on `num` to simplify responsive sizing in Flutter.
///
/// Example usage:
/// ```dart
/// double halfScreenWidth = 50.ofWidth(context);      // 50% of screen width
/// double quarterScreenHeight = 25.ofHeight(context); // 25% of screen height
/// ```
extension ScreenSizeExtensions on num {
  /// Calculates a percentage of the screen width based on the number.
  /// Usage: `50.ofWidth(context)` → 50% of screen width
  double ofWidth(BuildContext context) => (toDouble() / 100) * MediaQuery.of(context).size.width;

  /// Calculates a percentage of the screen height based on the number.
  /// Usage: `25.ofHeight(context)` → 25% of screen height
  double ofHeight(BuildContext context) => (toDouble() / 100) * MediaQuery.of(context).size.height;
}

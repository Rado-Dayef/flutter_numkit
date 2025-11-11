import 'package:flutter/material.dart';

/// A collection of handy extensions on `num` to simplify creating spacing widgets in Flutter.
///
/// Example usage:
/// ```dart
/// Column(
///   children: [
///     Text("Hello"),
///     10.vGap,
///     Text("Flutter NumKit!"),
///     1.spacer,
///   ],
/// )
/// ```
extension GapExtensions on num {
  /// Creates a flexible [Spacer] widget with the number as the `flex` value.
  /// Usage: `1.spacer`
  Spacer get spacer => Spacer(flex: toInt());

  /// Creates a vertical gap of given height using [SizedBox].
  /// Usage: `10.verticalGap`
  SizedBox get verticalGap => SizedBox(height: toDouble());

  /// Creates a horizontal gap of given width using [SizedBox].
  /// Usage: `10.horizontalGap`
  SizedBox get horizontalGap => SizedBox(width: toDouble());

  /// Creates a square gap with equal width and height using [SizedBox].
  /// Usage: `10.squareGap`
  SizedBox get squareGap => SizedBox(width: toDouble(), height: toDouble());
}

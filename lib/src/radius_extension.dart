import 'package:flutter/material.dart';

/// A collection of handy extensions on `num` to simplify working with `Radius` and `BorderRadius` in Flutter.
///
/// Example usage:
/// ```dart
/// Container(
///   decoration: BoxDecoration(
///     borderRadius: 16.allBorderRadius,
///     color: Colors.blue,
///   ),
/// );
/// ```
extension RadiusExtensions on num {
  /// Creates a circular [Radius] for all corners.
  /// Usage: `12.allRadius`
  Radius get allRadius => Radius.circular(toDouble());

  /// Creates a circular [BorderRadius] for all corners.
  /// Usage: `16.allBorderRadius`
  BorderRadius get allBorderRadius => BorderRadius.circular(toDouble());

  /// Creates a circular [BorderRadius] only for the top side.
  /// Usage: `16.topRadius`
  BorderRadius get topRadius => BorderRadius.vertical(top: Radius.circular(toDouble()));

  /// Creates a circular [BorderRadius] only for the left side.
  /// Usage: `16.leftRadius`
  BorderRadius get leftRadius => BorderRadius.horizontal(left: Radius.circular(toDouble()));

  /// Creates a circular [BorderRadius] only for the right side.
  /// Usage: `16.rightRadius`
  BorderRadius get rightRadius => BorderRadius.horizontal(right: Radius.circular(toDouble()));

  /// Creates a circular [BorderRadius] only for the bottom side.
  /// Usage: `16.bottomRadius`
  BorderRadius get bottomRadius => BorderRadius.vertical(bottom: Radius.circular(toDouble()));

  /// Creates a circular [BorderRadius] for both top and bottom.
  /// If a corner is not provided, it uses the number value.
  /// Usage: `16.verticalBorderRadius(top: 8)`
  BorderRadius verticalBorderRadius({double? top, double? bottom}) => BorderRadius.vertical(top: Radius.circular(top ?? toDouble()), bottom: Radius.circular(bottom ?? toDouble()));

  /// Creates a circular [BorderRadius] for both left and right.
  /// If a corner is not provided, it uses the number value.
  /// Usage: `16.horizontalBorderRadius(left: 8)`
  BorderRadius horizontalBorderRadius({double? left, double? right}) => BorderRadius.horizontal(left: Radius.circular(left ?? toDouble()), right: Radius.circular(right ?? toDouble()));

  /// Creates a custom [BorderRadius] where each corner can be set individually.
  /// If a corner is not provided, it uses the number value.
  /// Usage: `16.onlyBorderRadius(topLeft: 20, bottomRight: 8)`
  BorderRadius onlyBorderRadius({double? topLeft, double? topRight, double? bottomLeft, double? bottomRight}) => BorderRadius.only(
        topLeft: Radius.circular(topLeft ?? toDouble()),
        topRight: Radius.circular(topRight ?? toDouble()),
        bottomLeft: Radius.circular(bottomLeft ?? toDouble()),
        bottomRight: Radius.circular(bottomRight ?? toDouble()),
      );
}

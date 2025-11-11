import 'package:flutter/material.dart';

/// A collection of handy extensions on `num` to simplify creating `EdgeInsets` in Flutter.
///
/// Example usage:
/// ```dart
/// Container(
///   padding: 16.allEdgeInsets,
///   child: Text('Hello Flutter NumKit!'),
/// );
/// ```
extension EdgeInsetsExtensions on num {
  /// Creates [EdgeInsets] with the same value for all sides.
  /// Usage: `16.allEdgeInsets`
  EdgeInsets get allEdgeInsets => EdgeInsets.all(toDouble());

  /// Creates [EdgeInsets] only for the top side.
  /// Usage: `16.topEdgeInsets`
  EdgeInsets get topEdgeInsets => EdgeInsets.only(top: toDouble());

  /// Creates [EdgeInsets] only for the left side.
  /// Usage: `16.leftEdgeInsets`
  EdgeInsets get leftEdgeInsets => EdgeInsets.only(left: toDouble());

  /// Creates [EdgeInsets] only for the right side.
  /// Usage: `16.rightEdgeInsets`
  EdgeInsets get rightEdgeInsets => EdgeInsets.only(right: toDouble());

  /// Creates [EdgeInsets] only for the bottom side.
  /// Usage: `16.bottomEdgeInsets`
  EdgeInsets get bottomEdgeInsets => EdgeInsets.only(bottom: toDouble());

  /// Creates [EdgeInsets] with the same value for top and bottom.
  /// Usage: `16.verticalEdgeInsets`
  EdgeInsets get verticalEdgeInsets => EdgeInsets.symmetric(vertical: toDouble());

  /// Creates [EdgeInsets] with the same value for left and right.
  /// Usage: `16.horizontalEdgeInsets`
  EdgeInsets get horizontalEdgeInsets => EdgeInsets.symmetric(horizontal: toDouble());

  /// Creates [EdgeInsets] with optional vertical and horizontal values.
  /// If a value is not provided, it defaults to the number itself.
  /// Usage: `16.symmetricEdgeInsets(vertical: 20)` or `16.symmetricEdgeInsets()`
  EdgeInsets symmetricEdgeInsets({double? vertical, double? horizontal}) => EdgeInsets.symmetric(vertical: vertical ?? toDouble(), horizontal: horizontal ?? toDouble());

  /// Creates [EdgeInsets] with optional values for each side.
  /// If a side is not provided, it defaults to the number itself.
  /// Usage: `16.onlyEdgeInsets(top: 20, left: 10)`
  EdgeInsets onlyEdgeInsets({double? top, double? left, double? right, double? bottom}) =>
      EdgeInsets.only(top: top ?? toDouble(), left: left ?? toDouble(), right: right ?? toDouble(), bottom: bottom ?? toDouble());
}

/// A collection of handy extensions on `num` to simplify linear interpolation (tweening).
///
/// Example usage:
/// ```dart
/// double value = 0.5.lerp(0, 100); // 50
/// double value2 = 0.25.lerp(50, 150); // 75
/// ```
extension TweenExtensions on num {
  /// Linearly interpolates between `min` and `max` based on the number.
  /// The number should typically be between 0.0 and 1.0 to represent a percentage.
  /// Usage: `double value = 0.5.lerp(0, 100)` → 50
  double lerp(double min, double max) => min + (max - min) * toDouble();
}

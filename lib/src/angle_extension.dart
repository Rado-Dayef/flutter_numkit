/// A collection of handy extensions on `num` to simplify working with angles in Flutter.
///
/// Example usage:
/// ```dart
/// double radians = 45.degToRad;   // 0.7853981633974483
/// double degrees = 3.14.radToDeg; // 179.9087
/// ```
extension AngleExtensions on num {
  /// Converts degrees to radians.
  /// Usage: `45.degToRad` → 0.7853981633974483
  double get degToRad => toDouble() * (3.1415926535 / 180);

  /// Converts radians to degrees.
  /// Usage: `3.14.radToDeg` → 179.9087
  double get radToDeg => toDouble() * (180 / 3.1415926535);
}

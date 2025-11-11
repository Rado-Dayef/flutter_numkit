/// A collection of handy extensions on `num` to simplify working with percentages.
///
/// Example usage:
/// ```dart
/// double width = 50.percentOf(200); // 50% of 200 = 100
/// double padding = 10.percent;      // 10% = 0.1
/// ```
extension PercentageExtensions on num {
  /// Converts the number to a decimal percentage.
  /// Usage: `10.percent` → 0.1
  double get percent => toDouble() / 100;

  /// Calculates the percentage of a given number.
  /// Usage: `50.percentOf(200)` → 100
  double percentOf(num total) => (toDouble() / 100) * total;
}

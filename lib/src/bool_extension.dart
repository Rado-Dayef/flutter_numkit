/// A collection of handy extensions on `num` to simplify common boolean checks.
///
/// Example usage:
/// ```dart
/// print(4.isEvenNum);        // true
/// print(5.isOddNum);         // true
/// print(7.isBetween(5, 10)); // true
/// ```
extension BoolExtensions on num {
  /// Returns true if the number is odd.
  /// Usage: `5.isOddNum` → true
  bool get isOddNum => toInt().isOdd;

  /// Returns true if the number is even.
  /// Usage: `4.isEvenNum` → true
  bool get isEvenNum => toInt().isEven;

  /// Returns true if the number is between [min] and [max] (inclusive).
  /// Usage: `7.isBetween(5, 10)` → true
  bool isBetween(num min, num max) => toDouble() >= min && toDouble() <= max;
}

/// A collection of handy extensions on `num` to simplify creating `Duration` objects in Flutter.
///
/// Example usage:
/// ```dart
/// Future.delayed(3.sec, () => print("3 seconds passed"));
/// print(2.hours); // Duration of 2 hours
/// ```
extension DurationExtensions on num {
  /// Creates a [Duration] representing a number of days.
  /// Usage: `3.days`
  Duration get days => Duration(days: toInt());

  /// Creates a [Duration] representing a number of hours.
  /// Usage: `2.hours`
  Duration get hours => Duration(hours: toInt());

  /// Creates a [Duration] representing a number of seconds.
  /// Usage: `30.sec`
  Duration get sec => Duration(seconds: toInt());

  /// Creates a [Duration] representing a number of minutes.
  /// Usage: `5.min`
  Duration get min => Duration(minutes: toInt());

  /// Creates a [Duration] representing a number of milliseconds.
  /// Usage: `250.milSec`
  Duration get milSec => Duration(milliseconds: toInt());

  /// Creates a [Duration] representing a number of microseconds.
  /// Usage: `500.micSec`
  Duration get micSec => Duration(microseconds: toInt());
}

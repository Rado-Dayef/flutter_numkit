# Flutter NumKit

[![flutter_numkit 0.0.1](https://img.shields.io/badge/flutter__numkit-0.0.1-blue)](https://pub.dev/packages/flutter_numkit/install)
[![repo 0.0.1](https://img.shields.io/badge/repo-flutter__numkit-teal?logo=github&logoColor=white)](https://github.com/Rado-Dayef/flutter_numkit)

A collection of handy numeric extensions for Flutter that makes working with numbers more intuitive
and reduces boilerplate code.

## ✨ Features

- **Angles**: Convert between degrees and radians
- **Boolean Checks**: Check if a number is odd, even, or between values
- **Durations**: Create durations from numbers with different time units
- **Edge Insets**: Create EdgeInsets with less code
- **Gaps**: Easily add spacing in your layouts
- **Percentages**: Calculate percentages of numbers
- **Radius**: Create circular and rounded rectangles easily
- **Screen Sizes**: Responsive sizing based on screen dimensions
- **Tweens**: Simple linear interpolation between values

## Installation

Add the following to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_numkit: ^0.0.1
```

Then run:

```bash
flutter pub get
```

## Usage

Import the package:

```dart
import 'package:flutter_numkit/flutter_numkit.dart';
```

### Angle Extensions

```dart
final radians = 45.degToRad; // Convert degrees to radians (0.785)
final degrees = 3.14.radToDeg; // Convert radians to degrees (179.9087)
```

### Boolean Extensions

```dart
print(4.isEvenNum); // true
print(5.isOddNum); // true
print(7.isBetween(5, 10)); // true
```

### Gap Extensions

```dart
Column(
  children: [
    const Text('Hello'),
    10.verticalGap, // SizedBox with height 10
    const Text('World!'),
    1.spacer, // Flexible spacer with flex 1
  ],
)
```

### Screen Size Extensions

```dart
final halfScreenWidth = 50.ofWidth(context); // 50% of screen width
final quarterScreenHeight = 25.ofHeight(context); // 25% of screen height
```

### Tween Extensions

```dart
final value = 0.5.lerp(0, 100); // 50.0 (50% between 0 and 100)
final value2 = 0.25.lerp(50, 150); // 75.0 (25% between 50 and 150)
```

### Duration Extensions

```dart
await 2.seconds.delay; // Waits for 2 seconds
await 500.millis.delay; // Waits for 500 milliseconds
```

### Percentage Extensions

```dart

final result = 50.percentOf(200); // 100.0 (50% of 200)
```

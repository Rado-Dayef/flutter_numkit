# Flutter NumKit

[![flutter_numkit 1.0.0](https://img.shields.io/badge/flutter__numkit-1.0.0-blue)](https://pub.dev/packages/flutter_numkit/install)
[![repo 1.0.0](https://img.shields.io/badge/repo-flutter__numkit-teal?logo=github&logoColor=white)](https://github.com/Rado-Dayef/flutter_numkit)

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
  flutter_numkit: ^1.0.0
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
double radians = 45.degToRad; // Convert degrees to radians (0.785)
double degrees = 3.14.radToDeg; // Convert radians to degrees (179.9087)
```

### Boolean Extensions

```dart
bool boolean1 = 5.isOddNum; // true
bool boolean1 = 4.isEvenNum; // true
bool boolean1 = 7.isBetween(5, 10); // true
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

### Duration Extensions

```dart
// Create durations
Duration duration1 = 3.sec; // 3 seconds
Duration duration2 = 2.min; // 2 minutes
Duration duration3 = 1.days; // 1 days
Duration duration4 = 5.hours; // 5 hours
Duration duration5 = 500.milSec; // 500 milliseconds
Duration duration6 = 500.micSec; // 500 microseconds
```

### EdgeInsets Extensions

```dart
// All sides same padding
EdgeInsets padding1 = 16.allEdgeInsets;  // EdgeInsets.all(16.0)

// Symmetrical padding
EdgeInsets padding2 = 16.symmetricEdgeInsets();  // EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0)
EdgeInsets padding3 = 16.symmetricEdgeInsets(vertical: 20);   // EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0)

// Individual sides
EdgeInsets padding4 = 16.topEdgeInsets;  // EdgeInsets.only(top: 16)
EdgeInsets padding5 = 16.leftEdgeInsets;  // EdgeInsets.only(left: 16)
EdgeInsets padding6 = 16.rightEdgeInsets;  // EdgeInsets.only(right: 16)
EdgeInsets padding7 = 16.bottomEdgeInsets;  // EdgeInsets.only(bottom: 16)
EdgeInsets padding4 = 16.onlyEdgeInsets(top: 20, left: 10);  // EdgeInsets.only(top: 20, left: 10, right: 16, bottom: 16)
```

### Radius Extensions

```dart
// Circular radius
Radius radius1 = 12.allRadius;  // Radius.circular(12.0)

// All sides same border radius
BorderRadius borderRadius1 = 16.allBorderRadius;  // BorderRadius.circular(16.0)

// Symmetrical border radius
BorderRadius borderRadius2 = 16.verticalBorderRadius;  // BorderRadius.vertical(top: Radius.circular(16), bottom: Radius.circular(16))
BorderRadius borderRadius3 = 16.horizontalBorderRadius;  // BorderRadius.horizontal(left: Radius.circular(16), right: Radius.circular(16))

// Border radius
BorderRadius borderRadius4 = 16.topRadius;  // BorderRadius.vertical(top: Radius.circular(16)))
BorderRadius borderRadius5 = 16.leftRadius;  // BorderRadius.horizontal(left: Radius.circular(16))
BorderRadius borderRadius6 = 16.rightRadius;  // BorderRadius.horizontal(right: Radius.circular(16))
BorderRadius borderRadius7 = 16.bottomRadius;  // BorderRadius.vertical(bottom: Radius.circular(16))
BorderRadius borderRadius8 = 16.onlyBorderRadius(topLeft: 18, topRight: 12);  // BorderRadius.only( topLeft: Radius.circular(18), topRight: Radius.circular(12), bottomLeft: Radius.circular(16), bottomRight: Radius.circular(16));
```

### Screen Size Extensions

```dart
// Get percentage of screen width/height
double halfScreenWidth = 50.ofWidth(context);       // 50% of screen width
double quarterScreenHeight = 25.ofHeight(context);  // 25% of screen height
```

### Tween Extensions

```dart
// Linear interpolation
double value1 = 0.25.lerp(50, 150);  // 75.0 (25% between 50 and 150)
```

### Percentage Extensions

```dart
// Calculate percentages
double result1 = 10.percent;         // 0.1 (10% as decimal)
double result2 = 25.percentOf(1000); // 250.0 (25% of 1000)
```

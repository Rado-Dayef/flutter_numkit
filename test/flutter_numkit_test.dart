import 'package:flutter/material.dart';
import 'package:flutter_numkit/flutter_numkit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('BoolExtensions', () {
    test('isEvenNum and isOddNum', () {
      expect(4.isEvenNum, true);
      expect(5.isOddNum, true);
      expect(7.isEvenNum, false);
    });

    test('isBetween', () {
      expect(5.isBetween(1, 10), true);
      expect(0.isBetween(1, 10), false);
      expect(10.isBetween(1, 10), true);
    });
  });

  group('PercentageExtensions', () {
    test('percent', () {
      expect(50.percent, 0.5);
      expect(25.percent, 0.25);
      expect(0.percent, 0.0);
    });
  });

  group('AngleExtensions', () {
    test('degToRad and radToDeg', () {
      expect(180.degToRad, closeTo(3.1415926535, 0.000001));
      expect(3.1415926535.radToDeg, closeTo(180, 0.0001));
    });
  });

  group('TweenExtensions', () {
    test('lerp', () {
      expect(0.5.lerp(0, 100), 50);
      expect(1.0.lerp(50, 150), 150);
      expect(0.0.lerp(10, 20), 10);
    });
  });

  group('GapExtensions', () {
    testWidgets('vGap, hGap, squareGap, spacer', (tester) async {
      final widget = Column(children: [Text('Top'), 10.verticalGap, Text('Middle'), 5.horizontalGap, 20.squareGap, 1.spacer]);
      await tester.pumpWidget(MaterialApp(home: Scaffold(body: widget)));
      expect(find.text('Top'), findsOneWidget);
      expect(find.text('Middle'), findsOneWidget);
    });
  });

  group('RadiusExtensions', () {
    test('allRadius, allBorderRadius, onlyBorderRadius', () {
      expect(10.allRadius, Radius.circular(10));
      expect(16.allBorderRadius, BorderRadius.circular(16));
      final only = 12.onlyBorderRadius(topLeft: 5);
      expect(only.topLeft, Radius.circular(5));
      expect(only.topRight, Radius.circular(12));
    });
  });

  group('EdgeInsetsExtensions', () {
    test('allEdgeInsets, verticalEdgeInsets, onlyEdgeInsets', () {
      expect(10.allEdgeInsets, EdgeInsets.all(10));
      expect(8.verticalEdgeInsets, EdgeInsets.symmetric(vertical: 8));
      final only = 5.onlyEdgeInsets(top: 2, bottom: 3);
      expect(only.top, 2);
      expect(only.bottom, 3);
      expect(only.left, 5);
      expect(only.right, 5);
    });
  });

  group('DurationExtensions', () {
    test('days, hours, min, sec, milSec, micSec', () {
      expect(2.days, Duration(days: 2));
      expect(3.hours, Duration(hours: 3));
      expect(4.min, Duration(minutes: 4));
      expect(5.sec, Duration(seconds: 5));
      expect(250.milSec, Duration(milliseconds: 250));
      expect(1000.micSec, Duration(microseconds: 1000));
    });
  });

  group('ScreenSizeExtensions', () {
    testWidgets('ofWidth and ofHeight', (tester) async {
      const double number = 50;
      await tester.pumpWidget(
        MaterialApp(
          home: Builder(
            builder: (context) {
              final width = number.ofWidth(context);
              final height = number.ofHeight(context);
              expect(width, MediaQuery.of(context).size.width * 0.5);
              expect(height, MediaQuery.of(context).size.height * 0.5);
              return Container();
            },
          ),
        ),
      );
    });
  });
}

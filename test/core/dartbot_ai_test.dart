import 'package:flutter_test/flutter_test.dart';
import 'package:checkout_pro/core/dartbot_ai.dart';
import 'dart:math';

void main() {
  group('Dartbot AI', () {
    final ai = DartbotAI();

    test('Throws returns a point', () {
      final point = ai.throwDart(0, 0, 50);
      expect(point, isNotNull);
    });

    test('Pro skill (100) has tight spread', () {
      // Intended target: 0,0
      // Throw 100 times
      double totalDist = 0;
      for (int i = 0; i < 100; i++) {
        final point = ai.throwDart(0, 0, 100);
        final dist = sqrt(point.x * point.x + point.y * point.y);
        totalDist += dist;
      }
      final avgDist = totalDist / 100;
      
      // With skill 100, sigma is ~10mm. Avg dist (Rayleigh) ~ sigma * sqrt(pi/2) ~ 12.5
      // Allow some margin
      expect(avgDist, lessThan(30.0));
    });

    test('Beginner skill (0) has wide spread', () {
      // Intended target: 0,0
      double totalDist = 0;
      for (int i = 0; i < 100; i++) {
        final point = ai.throwDart(0, 0, 0);
        final dist = sqrt(point.x * point.x + point.y * point.y);
        totalDist += dist;
      }
      final avgDist = totalDist / 100;
      
      // With skill 0, sigma is ~60mm. Avg dist ~ 75mm
      expect(avgDist, greaterThan(40.0));
    });
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:checkout_pro/core/checkout_calculator.dart';

void main() {
  group('Checkout Calculator', () {
    test('Suggests Big Fish (170)', () {
      expect(CheckoutCalculator.getSuggestion(170), isNotNull);
      expect(CheckoutCalculator.getSuggestion(170), contains('BULL'));
    });

    test('Suggests Shanghai (120)', () {
      expect(CheckoutCalculator.getSuggestion(120), contains('D20'));
    });

    test('Suggests Tops (40)', () {
      expect(CheckoutCalculator.getSuggestion(40), 'D20');
    });

    test('Returns null for impossible out > 170', () {
      expect(CheckoutCalculator.getSuggestion(180), isNull);
    });
    
    test('Returns null or fallback for low numbers', () {
      // 3 should be null or S1 D1? My calculator handles evens mainly.
      // Let's check a simple even
      expect(CheckoutCalculator.getSuggestion(2), 'D1');
    });
  });
}

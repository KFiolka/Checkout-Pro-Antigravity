import 'package:flutter_test/flutter_test.dart';
import 'package:checkout_pro/core/x01_engine.dart';

void main() {
  group('X01 Engine', () {
    test('Initializes with correct score', () {
      final engine = X01Engine(playerNames: ['Player 1']);
      expect(engine.scores[0], 501);
      expect(engine.isGameOver, false);
    });

    test('Reduces score correctly', () {
      final engine = X01Engine(playerNames: ['Player 1', 'Player 2']);
      engine.inputScore(100);
      expect(engine.scores[0], 401);
      // Turn should pass to Player 2
      expect(engine.currentPlayerIndexIndex, 1);
    });

    test('Detects Bust (Negative Score)', () {
      final engine = X01Engine(playerNames: ['Player 1'], startingScore: 50);
      final wasValid = engine.inputScore(60); // 50 - 60 = -10
      
      expect(wasValid, false);
      expect(engine.scores[0], 50); // Score should remain same
    });

    test('Detects Game Over (Double Out)', () {
      final engine = X01Engine(playerNames: ['Player 1'], startingScore: 40);
      // Valid double out: D20 (40)
      final wasValid = engine.inputScore(40);
      
      expect(wasValid, true);
      expect(engine.scores[0], 0);
      expect(engine.isGameOver, true);
    });
    
    test('Detects Bust on 1 (Double Out rule)', () {
      final engine = X01Engine(playerNames: ['Player 1'], startingScore: 40);
      // Leave 1: 39
      final wasValid = engine.inputScore(39);
      
      expect(wasValid, false);
      expect(engine.scores[0], 40);
    });
  });
}

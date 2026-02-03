import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../core/game_engine.dart';
import '../core/x01_engine.dart';
import '../core/cricket_engine.dart';
import '../services/match_service.dart';
import '../providers/providers.dart';

class GameNotifier extends StateNotifier<GameEngine?> {
  final MatchHistoryService _matchService;

  GameNotifier(this._matchService) : super(null);

  void startX01Match(List<String> players, {int startingScore = 501}) {
    state = X01Engine(playerNames: players, startingScore: startingScore);
  }

  void startCricketMatch(List<String> players) {
    state = CricketEngine(playerNames: players);
  }

  bool inputScore(int score) {
    final engine = state;
    if (engine is X01Engine) {
      bool valid = engine.inputScore(score);
      state = engine; // Trigger notify
      if (engine.isGameOver) {
        _saveMatch(engine);
      }
      return valid;
    }
    return false;
  }
  
  void inputCricketDart(int target, int multiplier) {
    final engine = state;
    if (engine is CricketEngine) {
      engine.inputDart(target, multiplier);
      state = engine; // Trigger notify
       if (engine.isGameOver) {
        _saveMatch(engine);
      }
    }
  }

  void undo() {
    state?.undo();
    state = state; // Trigger notify (hacky for mutable object, ideally clone)
  }

  Future<void> _saveMatch(GameEngine engine) async {
    // Assuming player 1 is winner if current player just finished? 
    // Logic depends on engine state.
    // Ideally engine tells us who the winner is.
    // For now we pass 0 as placeholder winner ID.
    await _matchService.saveMatch(engine, winnerId: 0); 
  }
}

final gameProvider = StateNotifierProvider<GameNotifier, GameEngine?>((ref) {
  final matchService = ref.watch(matchServiceProvider);
  return GameNotifier(matchService);
});

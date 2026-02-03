import 'game_engine.dart';

class CricketState extends GameState {
  final Map<int, Map<int, int>> playerMarks; // PlayerIndex -> (Target -> Marks)
  final List<int> scores;
  final int currentPlayerIndex;
  final bool isGameOver;

  CricketState({
    required this.playerMarks,
    required this.scores,
    required this.currentPlayerIndex,
    required this.isGameOver,
  });
}

class CricketEngine extends GameEngine {
  static const List<int> targets = [20, 19, 18, 17, 16, 15, 25];
  
  // PlayerIndex -> (Target -> Marks count 0-3)
  final Map<int, Map<int, int>> _playerMarks = {};
  final List<int> _scores;
  bool _isGameOver = false;

  CricketEngine({required List<String> playerNames})
      : _scores = List.filled(playerNames.length, 0),
        super(playerNames) {
    for (var i = 0; i < playerNames.length; i++) {
      _playerMarks[i] = {for (var t in targets) t: 0};
    }
  }

  @override
  GameState getCurrentState() {
    // Deep copy of marks
    final copiedMarks = <int, Map<int, int>>{};
    _playerMarks.forEach((pIdx, marks) {
      copiedMarks[pIdx] = Map.from(marks);
    });

    return CricketState(
      playerMarks: copiedMarks,
      scores: List.from(_scores),
      currentPlayerIndex: currentPlayerIndexIndex,
      isGameOver: _isGameOver,
    );
  }

  @override
  void applyState(GameState state) {
    if (state is CricketState) {
      _scores.clear();
      _scores.addAll(state.scores);
      currentPlayerIndexIndex = state.currentPlayerIndex;
      _isGameOver = state.isGameOver;

      _playerMarks.clear();
      state.playerMarks.forEach((pIdx, marks) {
        _playerMarks[pIdx] = Map.from(marks);
      });
    }
  }

  bool inputDart(int target, int multiplier) {
    if (_isGameOver) return false;
    if (!targets.contains(target)) {
       // Miss or non-cricket number implies no state change in simple cricket logic 
       // (unless playing a variant, but standard cricket ignores non-targets)
       return true; 
    }

    recordState();

    int hitsToAdd = multiplier;
    Map<int, int> currentMarks = _playerMarks[currentPlayerIndexIndex]!;
    int currentCount = currentMarks[target] ?? 0;

    // Logic: Fill up to 3 marks, then score if others haven't closed
    while (hitsToAdd > 0) {
      if (currentCount < 3) {
        currentCount++;
        hitsToAdd--;
      } else {
        // Scorable?
        if (_canScore(target)) {
          _scores[currentPlayerIndexIndex] += target;
        }
        hitsToAdd--; // Consumed as points
      }
    }
    
    currentMarks[target] = currentCount;

    _checkWinCondition();
    
    return true;
  }
  
  void finishTurn() {
     nextPlayer();
  }

  bool _canScore(int target) {
    // Can score if ALL opponents have NOT closed (score < 3)
    // Actually standard rule: can score if I have closed (>3 or hitting 3rd) AND strictly anyone else has NOT closed.
    // Wait, simpler: I can score on a number if I have it closed (which logic above handles by overflowing marks into score)
    // AND there is at least one opponent who has NOT closed it.
    
    for (int i = 0; i < playerNames.length; i++) {
      if (i == currentPlayerIndexIndex) continue;
      if ((_playerMarks[i]?[target] ?? 0) < 3) {
        return true;
      }
    }
    return false;
  }

  void _checkWinCondition() {
    // Game over if player has all closed AND highest score (or equal)
    bool allClosed = true;
    for (var t in targets) {
      if ((_playerMarks[currentPlayerIndexIndex]?[t] ?? 0) < 3) {
        allClosed = false;
        break;
      }
    }

    if (allClosed) {
      bool highestScore = true;
      for (int i = 0; i < playerNames.length; i++) {
        if (i == currentPlayerIndexIndex) continue;
        if (_scores[i] > _scores[currentPlayerIndexIndex]) {
          highestScore = false;
          break;
        }
      }
      
      if (highestScore) {
        _isGameOver = true;
      }
    }
  }

  bool get isGameOver => _isGameOver;
}

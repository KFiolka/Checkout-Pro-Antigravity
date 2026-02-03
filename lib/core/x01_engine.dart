import 'game_engine.dart';

enum OutMode { single, double, master }

class X01State extends GameState {
  final List<int> scores;
  final int currentPlayerIndex;
  final bool isGameOver;

  X01State({
    required this.scores, 
    required this.currentPlayerIndex, 
    required this.isGameOver
  });
}

class X01Engine extends GameEngine {
  final int startingScore;
  final OutMode outMode;
  
  List<int> scores;
  bool _isGameOver = false;

  X01Engine({
    required List<String> playerNames,
    this.startingScore = 501,
    this.outMode = OutMode.double,
  }) : scores = List.filled(playerNames.length, startingScore),
       super(playerNames);

  @override
  GameState getCurrentState() {
    return X01State(
      scores: List.from(scores),
      currentPlayerIndex: currentPlayerIndexIndex,
      isGameOver: _isGameOver,
    );
  }

  @override
  void applyState(GameState state) {
    if (state is X01State) {
      scores = List.from(state.scores);
      currentPlayerIndexIndex = state.currentPlayerIndex;
      _isGameOver = state.isGameOver;
    }
  }

  /// Returns true if the score was valid, false if it was a bust
  bool inputScore(int turnScore) {
    if (_isGameOver) return false;

    recordState();
    
    int currentScore = scores[currentPlayerIndexIndex];
    int newScore = currentScore - turnScore;

    if (isBust(currentScore, turnScore, newScore)) {
      // In a bust, the score remains the same and it's the next player's turn
      nextPlayer();
      return false;
    }

    scores[currentPlayerIndexIndex] = newScore;

    if (newScore == 0) {
      _isGameOver = true;
    } else {
      nextPlayer();
    }
    
    return true;
  }

  bool isBust(int oldScore, int turnScore, int newScore) {
    // Basic bust: score goes below 0
    if (newScore < 0) return true;
    
    // Double Out specific: cannot end on 1
    if (outMode == OutMode.double && newScore == 1) return true;
    
    // Double Out specific: must end on a double (not explicitly checked here as turnScore is total)
    // In a real app with dart-by-dart entry, we'd check the last dart.
    // For turn-only entry, we assume the user knows they checked out if newScore == 0.
    
    return false;
  }

  bool get isGameOver => _isGameOver;
}

import 'dart:collection';

abstract class GameEngine {
  final List<String> playerNames;
  int currentPlayerIndexIndex = 0;
  
  // Undo/Redo stacks
  final ListQueue<GameState> _history = ListQueue<GameState>();
  
  GameEngine(this.playerNames);

  void recordState() {
    _history.addLast(getCurrentState());
    if (_history.length > 50) {
      _history.removeFirst();
    }
  }

  void undo() {
    if (_history.isNotEmpty) {
      applyState(_history.removeLast());
    }
  }

  GameState getCurrentState();
  void applyState(GameState state);
  
  void nextPlayer() {
    currentPlayerIndexIndex = (currentPlayerIndexIndex + 1) % playerNames.length;
  }
}

abstract class GameState {
  // Marker interface for snapshots of game state
}

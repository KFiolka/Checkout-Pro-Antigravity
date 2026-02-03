import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/x01_engine.dart';
import '../../providers/game_provider.dart';
import '../widgets/match_dashboard.dart';
import '../widgets/score_input_pad.dart';
import '../app_theme.dart';

class MatchScreen extends ConsumerStatefulWidget {
  const MatchScreen({super.key});

  @override
  ConsumerState<MatchScreen> createState() => _MatchScreenState();
}

class _MatchScreenState extends ConsumerState<MatchScreen> {
  // Local buffer for input (e.g., typing "1", "8", "0" before hitting enter)
  String _inputBuffer = "";
  
  // Local active stats tracking (Visual only)
  int? _lastTurnScore;
  double _currentAvg = 0.0; // Placeholder

  void _handleNumber(int number) {
    if (_inputBuffer.length < 3) {
      setState(() {
        _inputBuffer += number.toString();
      });
    }
  }

  void _handleUndo() {
    if (_inputBuffer.isNotEmpty) {
      setState(() {
        _inputBuffer = _inputBuffer.substring(0, _inputBuffer.length - 1);
      });
    } else {
      // Undo last turn in engine
      ref.read(gameProvider.notifier).undo();
      // Note: We should ideally revert _lastTurnScore too, but skipping for MVP
    }
  }

  void _handleEnter() {
    if (_inputBuffer.isNotEmpty) {
      int score = int.parse(_inputBuffer);
      final success = ref.read(gameProvider.notifier).inputScore(score);
      
      if (success) {
        setState(() {
          _lastTurnScore = score;
          _inputBuffer = "";
          // Update generic average (mock logic for visual)
          _currentAvg = (_currentAvg == 0) ? score.toDouble() : (_currentAvg + score) / 2;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final gameEngine = ref.watch(gameProvider);

    if (gameEngine == null) {
      return const Scaffold(body: Center(child: Text("No Active Game")));
    }

    // Assume X01 for now
    if (gameEngine is! X01Engine) {
      return const Scaffold(body: Center(child: Text("Only X01 Supported in UI MVP")));
    }

    final currentState = gameEngine.getCurrentState() as X01State;
    final currentScore = currentState.scores[currentState.currentPlayerIndex];
    final playerName = gameEngine.playerNames[currentState.currentPlayerIndex];

    return Scaffold(
      backgroundColor: AppTheme.oledBlack,
      body: SafeArea(
        child: Column(
          children: [
            // Top Half: Dashboard
            Expanded(
              flex: 5,
              child: MatchDashboard(
                currentScore: currentScore,
                playerName: playerName,
                isTurn: true,
                lastTurnScore: _lastTurnScore,
                currentAvg: _currentAvg > 0 ? _currentAvg : null,
                recentTurns: _lastTurnScore != null ? [_lastTurnScore!] : [],
              ),
            ),
            
            // Bottom Half: Input Pad
            Expanded(
              flex: 4,
              child: ScoreInputPad(
                onNumberPressed: _handleNumber,
                onUndo: _handleUndo,
                onEnter: _handleEnter,
                inputBuffer: _inputBuffer,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

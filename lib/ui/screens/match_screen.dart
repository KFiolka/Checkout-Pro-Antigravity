import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../core/x01_engine.dart';
import '../../core/checkout_calculator.dart';
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
    }
  }

  void _handleEnter() {
    if (_inputBuffer.isNotEmpty) {
      int score = int.parse(_inputBuffer);
      ref.read(gameProvider.notifier).inputScore(score);
      setState(() {
        _inputBuffer = "";
      });
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
              ),
            ),
            
            // Input Buffer Display check
            if (_inputBuffer.isNotEmpty)
              Container(
                color: AppTheme.neonCyan.withOpacity(0.1),
                width: double.infinity,
                padding: const EdgeInsets.all(8),
                child: Text(
                  "INPUT: $_inputBuffer",
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: AppTheme.neonCyan,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 4,
                  ),
                ),
              ),

            // Bottom Half: Input Pad
            Expanded(
              flex: 4,
              child: ScoreInputPad(
                onNumberPressed: _handleNumber,
                onUndo: _handleUndo,
                onEnter: _handleEnter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

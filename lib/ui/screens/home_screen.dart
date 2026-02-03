import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/training_selector.dart';
import '../../providers/game_provider.dart';
import 'match_screen.dart';
import '../app_theme.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: AppTheme.oledBlack,
      appBar: AppBar(
        title: const Text('Checkout Pro'),
        backgroundColor: AppTheme.oledBlack,
        foregroundColor: AppTheme.neonCyan,
      ),
      body: TrainingSelector(
        onModeSelected: (mode) {
          if (mode == 'X01') {
            // Start Default 501
            ref.read(gameProvider.notifier).startX01Match(['Player 1', 'Player 2']);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MatchScreen()),
            );
          } else {
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text("$mode coming soon!")),
             );
          }
        },
      ),
    );
  }
}

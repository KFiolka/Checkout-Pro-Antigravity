import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../../core/checkout_calculator.dart';

class MatchDashboard extends StatelessWidget {
  final int currentScore;
  final String playerName;
  final bool isTurn;

  const MatchDashboard({
    super.key,
    required this.currentScore,
    required this.playerName,
    required this.isTurn,
  });

  @override
  Widget build(BuildContext context) {
    final checkout = CheckoutCalculator.getSuggestion(currentScore);

    return Container(
      color: AppTheme.oledBlack,
      padding: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            playerName.toUpperCase(),
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: isTurn ? AppTheme.neonCyan : AppTheme.highContrastWhite.withOpacity(0.5),
            ),
          ),
          const SizedBox(height: 24),
          Text(
            currentScore.toString(),
            style: Theme.of(context).textTheme.displayLarge?.copyWith(
              fontSize: 120, // Hero size
              color: AppTheme.neonCyan,
              shadows: [
                const Shadow(
                  blurRadius: 20.0,
                  color: AppTheme.neonCyan,
                  offset: Offset(0, 0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          if (checkout != null)
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
               decoration: BoxDecoration(
                 border: Border.all(color: AppTheme.neonMagenta),
                 borderRadius: BorderRadius.circular(8),
               ),
               child: Text(
                 checkout,
                 style: const TextStyle(
                   color: AppTheme.neonMagenta,
                   fontSize: 24,
                   fontWeight: FontWeight.bold,
                 ),
               ),
             ),
        ],
      ),
    );
  }
}

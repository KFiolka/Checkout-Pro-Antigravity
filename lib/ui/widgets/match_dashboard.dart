import 'package:flutter/material.dart';
import '../app_theme.dart';
import '../../core/checkout_calculator.dart';

class MatchDashboard extends StatelessWidget {
  final int currentScore;
  final String playerName;
  final bool isTurn;
  
  // Optional stats for future integration
  final int? lastTurnScore;
  final double? currentAvg;
  final List<int> recentTurns;

  const MatchDashboard({
    super.key,
    required this.currentScore,
    required this.playerName,
    required this.isTurn,
    this.lastTurnScore,
    this.currentAvg,
    this.recentTurns = const [],
  });

  @override
  Widget build(BuildContext context) {
    final checkout = CheckoutCalculator.getSuggestion(currentScore);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
      color: AppTheme.oledBlack,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 1. Header (Player & Game State)
          _buildHeader(context),
          
          const Spacer(flex: 1),

          // 2. Hero Score Section
          _buildHeroScore(context),
          
          const SizedBox(height: 16),
          
          // 3. Checkout Suggestion
          if (checkout != null) 
            _buildCheckoutBox(checkout),
          if (checkout == null)
             const SizedBox(height: 48), // Spacer placeholder

          const Spacer(flex: 1),

          // 4. Stats Row (Last Turn / Avg)
          _buildStatsRow(context),

          const SizedBox(height: 24),
          
          // 5. Recent Turns (Visual Decoration)
          _buildRecentTurnsList(context),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Column(
      children: [
        Text(
          playerName.toUpperCase(),
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            color: isTurn ? AppTheme.neonCyan : AppTheme.highContrastWhite.withOpacity(0.5),
            fontSize: 24,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          "LEG 1 • SET 1", // Placeholder for Leg/Set info
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppTheme.highContrastWhite.withOpacity(0.5),
            fontSize: 14,
            letterSpacing: 2.0,
          ),
        ),
      ],
    );
  }

  Widget _buildHeroScore(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Glow effect
        Text(
          currentScore.toString(),
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontSize: 140,
            color: AppTheme.neonCyan.withOpacity(0.1),
            shadows: AppTheme.neonCyanGlow,
          ),
        ),
        // Actual Text
        Text(
          currentScore.toString(),
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontSize: 140,
            color: AppTheme.neonCyan,
          ),
        ),
      ],
    );
  }

  Widget _buildCheckoutBox(String checkoutPath) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: AppTheme.oledBlack,
        border: Border.all(color: AppTheme.neonMagenta, width: 2),
        borderRadius: BorderRadius.circular(50), // Pill shape
        boxShadow: AppTheme.neonMagentaGlow,
      ),
      child: Text(
        checkoutPath, // e.g., T20 - T19 - D12
        style: const TextStyle(
          color: AppTheme.neonMagenta,
          fontSize: 24,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
        ),
      ),
    );
  }

  Widget _buildStatsRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildStatItem(context, "LAST TURN", lastTurnScore?.toString() ?? "--", isAccent: false),
        Container(width: 1, height: 40, color: AppTheme.highContrastWhite.withOpacity(0.2)),
        _buildStatItem(context, "3-DART AVG", currentAvg?.toStringAsFixed(1) ?? "--", isAccent: true),
      ],
    );
  }

  Widget _buildStatItem(BuildContext context, String label, String value, {required bool isAccent}) {
    return Column(
      children: [
        Text(
          label,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
            color: AppTheme.highContrastWhite.withOpacity(0.6),
            fontSize: 12,
            letterSpacing: 1.5,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineLarge?.copyWith(
            fontSize: 32,
            color: isAccent ? AppTheme.neonCyan : AppTheme.highContrastWhite,
          ),
        ),
      ],
    );
  }

  Widget _buildRecentTurnsList(BuildContext context) {
    // A simplified visual list of recent turns
    if (recentTurns.isEmpty) return const SizedBox.shrink();

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.mutedCharcoal.withOpacity(0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.highContrastWhite.withOpacity(0.1)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "RECENT TURNS",
             style: Theme.of(context).textTheme.labelSmall?.copyWith(color: AppTheme.highContrastWhite.withOpacity(0.5)),
          ),
          const SizedBox(height: 8),
          ...recentTurns.take(3).map((score) => 
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  Text(
                    score.toString(),
                    style: const TextStyle(color: AppTheme.highContrastWhite, fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(width: 12),
                  // Mock details for now
                   Text(
                    "(T20, T20, 20)", // Placeholder for breakdown
                    style: TextStyle(color: AppTheme.highContrastWhite.withOpacity(0.4), fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

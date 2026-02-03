import 'package:flutter/material.dart';
import '../app_theme.dart';

class TrainingSelector extends StatelessWidget {
  final Function(String) onModeSelected;

  const TrainingSelector({super.key, required this.onModeSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "TRAINING MODES",
                style: Theme.of(context).textTheme.labelLarge?.copyWith(
                  color: AppTheme.neonCyan,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Master Your Game",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                "Professional drills for elite performance.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            children: [
              _buildTrainingCard(
                context,
                title: "X01 Match",
                subtitle: "Standard 501 game. First to zero.",
                category: "MATCH PLAY",
                icon: Icons.emoji_events, // Use a trophy or similar
                stats: "Play",
                onTap: () => onModeSelected("X01"),
              ),
              const SizedBox(height: 16),
              _buildTrainingCard(
                context,
                title: "Bob's 27",
                subtitle: "The ultimate doubles practice. Stay above zero or it's game over.",
                category: "DOUBLES FOCUS",
                icon: Icons.track_changes,
                stats: "Best: 142",
                onTap: () => onModeSelected("Bob's 27"),
              ),
              const SizedBox(height: 16),
              _buildTrainingCard(
                context,
                title: "Around the Clock",
                subtitle: "Hit every segment from 1 to 20 in sequence. Speed is key.",
                category: "CONSISTENCY",
                icon: Icons.schedule,
                stats: "Best: 2:14s",
                 onTap: () => onModeSelected("Around the Clock"),
              ),
              const SizedBox(height: 16),
               _buildTrainingCard(
                context,
                title: "121 Challenge",
                subtitle: "Check out 121 in 9 darts or less. Three attempts per level.",
                category: "FINISHING",
                icon: Icons.stairs,
                stats: "Level 4",
                 onTap: () => onModeSelected("121 Challenge"),
              ),
               const SizedBox(height: 16),
               _buildTrainingCard(
                context,
                title: "JDC Challenge",
                subtitle: "Official JDC routine. Test every aspect of your game.",
                category: "OFFICIAL ROUTINE",
                icon: Icons.emoji_events,
                stats: "Best: 640",
                 onTap: () => onModeSelected("JDC Challenge"),
              ),
              const SizedBox(height: 32),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildTrainingCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required String category,
    required IconData icon,
    required String stats,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppTheme.mutedCharcoal,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppTheme.highContrastWhite.withOpacity(0.05)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(16),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.circle, size: 8, color: AppTheme.neonMagenta),
                    const SizedBox(width: 8),
                    Text(
                      category,
                      style: const TextStyle(
                        color: AppTheme.neonMagenta,
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        letterSpacing: 1.0,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                      decoration: BoxDecoration(
                        color: AppTheme.oledBlack,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: AppTheme.neonCyan.withOpacity(0.3)),
                      ),
                      child: Text(
                        stats,
                        style: const TextStyle(
                          color: AppTheme.neonCyan,
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: AppTheme.oledBlack,
                        shape: BoxShape.circle,
                        border: Border.all(color: AppTheme.neonCyan),
                        boxShadow: AppTheme.neonCyanGlow.map((s) => BoxShadow(color: s.color.withOpacity(0.2), blurRadius: 10)).toList(),
                      ),
                      child: Icon(icon, color: AppTheme.neonCyan, size: 28),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                              color: AppTheme.highContrastWhite,
                              fontSize: 22,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            subtitle,
                            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppTheme.highContrastWhite.withOpacity(0.7),
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "START >",
                    style: TextStyle(
                      color: AppTheme.neonCyan,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                      letterSpacing: 1.2,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

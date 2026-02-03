import 'package:flutter/material.dart';
import '../app_theme.dart';

class TrainingSelector extends StatelessWidget {
  final Function(String) onModeSelected;

  const TrainingSelector({super.key, required this.onModeSelected});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.all(16),
      mainAxisSpacing: 16,
      crossAxisSpacing: 16,
      children: [
        _buildCard(context, 'X01', Icons.change_history, 'Standard Game'),
        _buildCard(context, 'Cricket', Icons.grid_3x3, 'Tactical Play'),
        _buildCard(context, "Bob's 27", Icons.trending_up, 'Doubles Practice'),
        _buildCard(context, 'JDC Challenge', Icons.workspace_premium, 'Skill Assessment'),
      ],
    );
  }

  Widget _buildCard(BuildContext context, String title, IconData icon, String subtitle) {
    return InkWell(
      onTap: () => onModeSelected(title),
      child: Container(
        decoration: BoxDecoration(
          color: AppTheme.mutedCharcoal,
          border: Border.all(color: AppTheme.neonCyan.withOpacity(0.5)),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 48, color: AppTheme.neonCyan),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                color: AppTheme.highContrastWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              subtitle,
              style: TextStyle(
                color: AppTheme.highContrastWhite.withOpacity(0.7),
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

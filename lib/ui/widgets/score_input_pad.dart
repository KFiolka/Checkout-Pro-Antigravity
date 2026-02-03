import 'package:flutter/material.dart';
import '../app_theme.dart';

class ScoreInputPad extends StatelessWidget {
  final Function(int) onNumberPressed;
  final VoidCallback onUndo;
  final VoidCallback onEnter;

  const ScoreInputPad({
    super.key,
    required this.onNumberPressed,
    required this.onUndo,
    required this.onEnter,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: AppTheme.oledBlack,
      child: Column(
        children: [
          // Row 1: 7, 8, 9
          Expanded(child: _buildRow([7, 8, 9])),
          const SizedBox(height: 8),
          // Row 2: 4, 5, 6
          Expanded(child: _buildRow([4, 5, 6])),
           const SizedBox(height: 8),
          // Row 3: 1, 2, 3
          Expanded(child: _buildRow([1, 2, 3])),
           const SizedBox(height: 8),
          // Row 4: Undo, 0, Enter
          Expanded(
            child: Row(
              children: [
                Expanded(child: _buildActionButton(Icons.undo, onUndo, isSecondary: true)),
                const SizedBox(width: 8),
                Expanded(child: _buildNumberButton(0)),
                const SizedBox(width: 8),
                Expanded(child: _buildActionButton(Icons.check, onEnter, isSecondary: false)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow(List<int> numbers) {
    return Row(
      children: numbers.asMap().entries.map((entry) {
        final index = entry.key;
        final number = entry.value;
        return Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: index < 2 ? 8.0 : 0),
            child: _buildNumberButton(number),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildNumberButton(int number) {
    return ElevatedButton(
      onPressed: () => onNumberPressed(number),
      style: ElevatedButton.styleFrom(
        backgroundColor: AppTheme.oledBlack,
        foregroundColor: AppTheme.neonCyan,
        side: const BorderSide(color: AppTheme.neonCyan, width: 2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.borderRadius)),
        padding: EdgeInsets.zero,
      ),
      child: Text(
        number.toString(),
        style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildActionButton(IconData icon, VoidCallback onPressed, {required bool isSecondary}) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: isSecondary ? AppTheme.oledBlack : AppTheme.neonCyan,
        foregroundColor: isSecondary ? AppTheme.neonCyan : AppTheme.oledBlack,
        side: const BorderSide(color: AppTheme.neonCyan, width: 2),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppTheme.borderRadius)),
      ),
      child: Icon(icon, size: 32),
    );
  }
}

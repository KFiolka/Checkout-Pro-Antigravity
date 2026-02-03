import 'package:flutter/material.dart';
import '../app_theme.dart';

class ScoreInputPad extends StatelessWidget {
  final Function(int) onNumberPressed;
  final VoidCallback onUndo;
  final VoidCallback onEnter;
  final String inputBuffer; // Current numbers typed

  const ScoreInputPad({
    super.key,
    required this.onNumberPressed,
    required this.onUndo,
    required this.onEnter,
    this.inputBuffer = "",
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.oledBlack,
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: Column(
        children: [
          // Input Display Area
          Expanded(
            flex: 2,
            child: Center(
              child: Text(
                inputBuffer.isEmpty ? "ENTER SCORE" : inputBuffer,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: inputBuffer.isEmpty 
                      ? AppTheme.highContrastWhite.withOpacity(0.1) 
                      : AppTheme.neonCyan,
                  fontSize: 64, // Large input text
                  letterSpacing: 4.0,
                  shadows: inputBuffer.isEmpty ? [] : AppTheme.neonCyanGlow,
                ),
              ),
            ),
          ),
          
          // Keypad Area
          Expanded(
            flex: 5,
            child: Column(
              children: [
                Expanded(child: _buildRow([7, 8, 9])),
                const SizedBox(height: 12),
                Expanded(child: _buildRow([4, 5, 6])),
                const SizedBox(height: 12),
                Expanded(child: _buildRow([1, 2, 3])),
                const SizedBox(height: 12),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: _buildActionButton(Icons.undo, onUndo, isSecondary: true)),
                      const SizedBox(width: 12),
                      Expanded(child: _buildNumberButton(0)),
                      const SizedBox(width: 12),
                      Expanded(child: _buildActionButton(Icons.check, onEnter, isSecondary: false)),
                    ],
                  ),
                ),
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
            padding: EdgeInsets.only(right: index < 2 ? 12.0 : 0),
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
        backgroundColor: AppTheme.mutedCharcoal, // Slightly lighter than background
        foregroundColor: AppTheme.highContrastWhite,
        side: BorderSide(color: AppTheme.highContrastWhite.withOpacity(0.1), width: 1),
        shadowColor: Colors.transparent, // Flat by default
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
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
        backgroundColor: isSecondary ? AppTheme.mutedCharcoal : AppTheme.neonCyan,
        foregroundColor: isSecondary ? AppTheme.neonCyan : AppTheme.oledBlack,
        side: isSecondary 
            ? const BorderSide(color: AppTheme.neonCyan, width: 2)
            : BorderSide.none,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16)),
        elevation: isSecondary ? 0 : 8,
        shadowColor: isSecondary ? Colors.transparent : AppTheme.neonCyan,
      ),
      child: Icon(icon, size: 32),
    );
  }
}

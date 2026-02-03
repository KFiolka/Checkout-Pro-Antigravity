import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'ui/screens/home_screen.dart';
import 'ui/app_theme.dart';

void main() {
  runApp(
    const ProviderScope(
      child: CheckoutProApp(),
    ),
  );
}

class CheckoutProApp extends StatelessWidget {
  const CheckoutProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkout Pro',
      theme: AppTheme.darkTheme,
      home: const HomeScreen(),
    );
  }
}

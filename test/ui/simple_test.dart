import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:checkout_pro/ui/screens/match_screen.dart';
import 'package:checkout_pro/providers/game_provider.dart';
import 'package:checkout_pro/providers/providers.dart';
import 'package:checkout_pro/ui/widgets/score_input_pad.dart';
import '../mocks.dart';

void main() {
  testWidgets('Match Screen Logic', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          matchServiceProvider.overrideWithValue(MockMatchHistoryService()),
        ],
        child: const MaterialApp(home: MatchScreen()),
      ),
    );

    // Initial state: "No Active Game" because we didn't start one in the provider
    expect(find.text('No Active Game'), findsOneWidget);

    // Now let's try to set the state by interacting with the provider...
    // But we need the Container to interact. 
    // Easier approach: Use a wrapper widget that initializes the game.
  });

  testWidgets('Match Screen with Active Game', (WidgetTester tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          matchServiceProvider.overrideWithValue(MockMatchHistoryService()),
        ],
        child: MaterialApp(
          home: Consumer(
            builder: (context, ref, child) {
              // Initialize Game on first build
              Future.microtask(() {
                ref.read(gameProvider.notifier).startX01Match(['Player 1']);
              });
              return const MatchScreen();
            },
          ),
        ),
      ),
    );
    
    await tester.pump(); // Start microtask
    await tester.pump(); // Rebuild with state

    // Should see Dashboard
    expect(find.text('501'), findsOneWidget);
    
    // Interact
    await tester.tap(find.widgetWithText(ElevatedButton, '1'));
    await tester.pump();
    await tester.tap(find.widgetWithText(ElevatedButton, '0'));
    await tester.pump();
    await tester.tap(find.widgetWithText(ElevatedButton, '0'));
    await tester.pump();
    
    expect(find.text('INPUT: 100'), findsOneWidget);

    // Enter
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump();

    // 401
    expect(find.text('401'), findsOneWidget);
  });
}

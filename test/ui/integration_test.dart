import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:checkout_pro/main.dart'; // To access CheckoutProApp if testing full app or HomeScreen
import 'package:checkout_pro/ui/screens/home_screen.dart';
import 'package:checkout_pro/ui/screens/match_screen.dart';
import 'package:checkout_pro/ui/widgets/match_dashboard.dart';
import 'package:checkout_pro/ui/widgets/score_input_pad.dart';

import 'package:checkout_pro/providers/providers.dart';
import '../mocks.dart';

void main() {
  testWidgets('Full Game Flow Integration', (WidgetTester tester) async {
    // 1. App Start with Overrides
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
           matchServiceProvider.overrideWithValue(MockMatchHistoryService()),
        ],
        child: const MaterialApp(home: HomeScreen()),
      ),
    );
    
    // 2. Select X01 Mode
    expect(find.text('X01'), findsOneWidget);
    await tester.tap(find.text('X01'));
    await tester.pumpAndSettle(); // Walt for navigation

    // 3. Verify Match Screen
    expect(find.byType(MatchScreen), findsOneWidget);
    expect(find.byType(MatchDashboard), findsOneWidget);
    expect(find.byType(ScoreInputPad), findsOneWidget);
    
    // Initial Score 501
    expect(find.text('501'), findsOneWidget);

    // 4. Input Score 100
    // Tap 1
    await tester.tap(find.widgetWithText(ElevatedButton, '1'));
    await tester.pump();
    // Tap 0
    await tester.tap(find.widgetWithText(ElevatedButton, '0'));
    await tester.pump();
    // Tap 0
    await tester.tap(find.widgetWithText(ElevatedButton, '0'));
    await tester.pump();

    // Verify Buffer (INPUT: 100)
    expect(find.text('INPUT: 100'), findsOneWidget);

    // Enter
    await tester.tap(find.byIcon(Icons.check));
    await tester.pump(); // State update

    // 5. Verify Score Update (501 - 100 = 401)
    expect(find.text('401'), findsOneWidget);
    
    // 6. Verify Player Turn Change (Player 1 -> Player 2)
    // Matches logic: "PLAYER 2"
    expect(find.text('PLAYER 2'), findsOneWidget);
  });
}

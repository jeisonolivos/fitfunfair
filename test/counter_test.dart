import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fitfunfair/main.dart';

void main() {
  testWidgets('Counter increments three times', (WidgetTester tester) async {
    // Build the app
    await tester.pumpWidget(const MyApp());

    // Verify the counter starts at 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('3'), findsNothing);

    // Tap the '+' icon 3 times
    await tester.tap(find.byIcon(Icons.add));
    await tester.tap(find.byIcon(Icons.add));
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify counter is 3
    expect(find.text('0'), findsNothing);
    expect(find.text('3'), findsOneWidget);
  });
}
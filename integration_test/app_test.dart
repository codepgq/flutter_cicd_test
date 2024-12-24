import 'package:cicd_test/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();
  group("Counter App", () {
    testWidgets('tap on the floating action button, verify counter',
        (tester) async {
      // Load app widget.
      await tester.pumpWidget(const MyApp());

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on.
      final incrementButtonFinder = find.byKey(const Key('increment'));

      // Emulate a tap on the floating action button.
      await tester.tap(incrementButtonFinder);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the counter increments by 1.
      expect(find.text('1'), findsOneWidget);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Emulate a tap on the floating action button.
      await tester.tap(incrementButtonFinder);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the counter increments by 2.
      expect(find.text('2'), findsOneWidget);
    });
  });
}

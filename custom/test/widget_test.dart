import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shader_example/main.dart'; // Update this to the correct import path

void main() {
  testWidgets('Check nested containers layout', (WidgetTester tester) async {
    // Build the app and trigger a frame
    await tester.pumpWidget(MyApp());

    // Wait for any ongoing animations to complete
    await tester.pumpAndSettle();

    // Verify the outer white container is present
    expect(find.byWidgetPredicate((widget) =>
        widget is Container && widget.color == Colors.white), findsOneWidget);

    // Verify the inner yellow container is present
    expect(find.byWidgetPredicate((widget) =>
        widget is Container && widget.color == Colors.yellow), findsOneWidget);

    // Tap the screen to trigger the animation
    await tester.tap(find.byType(GestureDetector));
    await tester.pump(); // Trigger a frame

    // Wait for the animation to settle
    await tester.pumpAndSettle();

    // Verify the outer white container is still present
    expect(find.byWidgetPredicate((widget) =>
        widget is Container && widget.color == Colors.white), findsOneWidget);

    // Verify the inner yellow container is still present
    expect(find.byWidgetPredicate((widget) =>
        widget is Container && widget.color == Colors.yellow), findsOneWidget);
  });
}

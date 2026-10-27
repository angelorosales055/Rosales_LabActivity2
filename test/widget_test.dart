// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';
import 'package:rosales_labactivity2/water_tracker_app.dart';

// Ensure this path correctly points to where WaterTrackerApp is defined

void main() {
  testWidgets('Water Tracker UI smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const WaterTrackerApp());

    // Verify that key UI elements from the Water Tracker app exist.
    expect(find.text('Water Tracker'), findsOneWidget);
    expect(find.text('Stay Hydrated!'), findsOneWidget);
    
    // Verify that the daily water goal is displayed.
    expect(find.text('8'), findsOneWidget);
    expect(find.text('glasses per day'), findsOneWidget);

    // Verify the buttons/blocks exist.
    expect(find.text('Drink water regularly'), findsOneWidget);
    expect(find.text('Bring your water bottle'), findsOneWidget);
  });
}
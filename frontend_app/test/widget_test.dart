import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:frontend_app/main.dart';

void main() {
  testWidgets('Shows app and default nav', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    // Expect to find the initial AppBar title "Tasks"
    await tester.pumpAndSettle();
    expect(find.text('Tasks'), findsOneWidget);
    // FAB should exist on Tasks tab
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });
}

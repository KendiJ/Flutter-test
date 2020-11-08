import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:testing/main.dart';

void main() {

  testWidgets('description', (WidgetTester tester) async {

    // shows which widget is being tested
    await tester.pumpWidget(MyApp());

    // checks if the button exists
    var button = find.byType(FloatingActionButton);

    //confirms if the button exist
    expect(button, findsOneWidget);

    await tester.tap(find.byIcon(Icons.add));
    expect(button, findsOneWidget);

    // find the floating button 
    var floatingButton = find.byIcon(Icons.add);
    expect(floatingButton, findsOneWidget);

    // find the button 
    await tester.tap(floatingButton);

    // await execution of one frame 
    await tester.pump();

  });
}
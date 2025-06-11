import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p_20250610_ver04/main.dart';

void main() {
  testWidgets('Counter Screen Text', (WidgetTester tester) async {
    await tester.pumpWidget(const UebungMachtMeister());

    await tester.tap(find.byKey(Key('navigateToCounterButton')));
    await tester.pumpAndSettle();

    expect(find.text('Counter Screen'), findsOneWidget);
    expect(find.text('PLUS'), findsOneWidget);
    var counterTextWidget = tester.widget<Text>(find.byKey(Key('counterText')));
    expect(counterTextWidget.data, equals('Counter 0'));
    await tester.tap(find.byKey(Key('incrementButton')));
    await tester.pump();

    counterTextWidget = tester.widget<Text>(find.byKey(Key('counterText')));
    expect(counterTextWidget.data, equals('Counter 1'));
  });
}

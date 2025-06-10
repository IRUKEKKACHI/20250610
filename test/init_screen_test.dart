import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:p_20250610_ver04/main.dart';

void main() {
  testWidgets('Init Screen', (WidgetTester tester) async {
    await tester.pumpWidget(UebungMachtMeister());

    expect(find.text('Init Screen'), findsOneWidget);
    expect(
        find.text(
            'Morgen will ich sagen genau so wie jetzt: ich übe heute auch wie ich getstern gemacht habe.'),
        findsOneWidget);
  });
}

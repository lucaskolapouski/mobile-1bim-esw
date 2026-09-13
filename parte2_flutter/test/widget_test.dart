import 'package:flutter_test/flutter_test.dart';
import 'package:parte2_flutter/main.dart';

void main() {
  testWidgets('DivideAí abre a home com AppBar', (WidgetTester tester) async {
    await tester.pumpWidget(const DivideAi());
    await tester.pump();

    expect(find.text('DivideAí'), findsOneWidget);
  });
}

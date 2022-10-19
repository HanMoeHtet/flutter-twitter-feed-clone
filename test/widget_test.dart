import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_twitter_feed_clone/app.dart';

void main() {
  testWidgets('Home screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());

    expect(find.byIcon(Icons.post_add), findsOneWidget);

    await tester.tap(find.byIcon(Icons.search));
    await tester.pump();

    expect(find.byIcon(Icons.post_add), findsNothing);
  });
}

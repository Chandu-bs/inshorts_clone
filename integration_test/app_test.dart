import 'package:integration_test/integration_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inshorts_clone/main.dart' as app;
import 'package:flutter/material.dart';
import 'package:inshorts_clone/constants.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    "App Testing by calling function",
    (WidgetTester tester) async {
      //Arrange
      app.main();
      await tester.pumpAndSettle();

      // Act
      await Future.delayed(const Duration(seconds: 3));
      await tester.drag(find.byType(PageView), const Offset(0, -660));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 3));
      await tester.drag(find.byKey(Gs), const Offset(800, 0));
      await Future.delayed(const Duration(seconds: 4));
      await Future.delayed(const Duration(seconds: 6));

      expect(find.text(kHeading2), findsOneWidget);
    },
  );

// testWidgets(
//     "Testing the Swipe function",
//     (WidgetTester tester) async {
//       //Arrange
//       app.main();
//       await Future.delayed(const Duration(seconds: 3));
//       await tester.drag(find.byType(GestureDetector), const Offset(490, 0));
//       await tester.pumpAndSettle();
//       await Future.delayed(const Duration(seconds: 3));

//       final text = find.text('hindustantimes.com');

//       expect(text, findsOneWidget);
//     },
//   );
}

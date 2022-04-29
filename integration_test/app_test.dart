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
      Widget testWidget() => MaterialApp(
            home: Scaffold(
              body: SafeArea(
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: kImage1,
                    ),
                  ),
                ),
              ),
            ),
          );
      final expectedWidget = find.text("President");

      // Act
      await Future.delayed(const Duration(seconds: 3));
      await tester.drag(find.byType(PageView), const Offset(0, -750));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 3));

      // //Assert
      // expect(find.byKey(Pv), findsOneWidget);
      // await Future.delayed(const Duration(seconds: 3));
      // await tester.dragUntilVisible(
      //   expectedWidget, // what you want to find
      //   find.byType(PageView), // widget you want to scroll
      //   const Offset(0, -100), // delta to move
      // );
      // await Future.delayed(const Duration(seconds: 5));
    },
  );
}

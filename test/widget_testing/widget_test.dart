// import 'package:integration_test/integration_test.dart';

import 'package:flutter/material.dart';
import 'package:inshorts_clone/constants.dart';
import 'package:inshorts_clone/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inshorts_clone/newsCard.dart';
import 'package:inshorts_clone/news_screen.dart';
import 'package:network_image_mock/network_image_mock.dart';

Widget makeTestableWidget() => MaterialApp(
    home: Image.network(
        'https://media.npr.org/assets/img/2020/04/28/gettyimages-1205434458_custom-c47a8defd1fa1c6c825b88646de9f1873aff8d0a.jpg'));

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

final expectedWidget = find.text(kHeading10);
void main() {
// Checking the Scaffold key
  testWidgets(
    "finding the Scaffold",
    (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      final scaffoldFinder = find.byKey(scaffold);

      expect(scaffoldFinder, findsOneWidget);
    },
  );

// Checking the network image widget in the UI
  testWidgets(
    'should properly mock Image.network and not crash',
    (WidgetTester tester) async {
      mockNetworkImagesFor(() => tester.pumpWidget(makeTestableWidget()));
    },
  );

// Checking the Text widget in the headline
  testWidgets(
    "finding the headline in UI",
    (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      final textFinder = find.byKey(HL);

      expect(find.text(kHeading), findsOneWidget);
    },
  );

// Checking the Text widget in the Details
  testWidgets(
    "finding the details in UI",
    (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      expect(find.text(kDetails), findsOneWidget);
    },
  );

//To check padding instance of the heading
  testWidgets('find padding instances', (WidgetTester tester) async {
    const childWidget = Padding(padding: EdgeInsets.all(16.0));

    await tester.pumpWidget(Container(child: childWidget));

    expect(find.byWidget(childWidget), findsOneWidget);
  });

//To check the text color, font size and font weight of the info
  testWidgets('To test color and fontSize of text info',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final text = tester.widget<Text>(find.text(kDetails));

    expect(text.style?.color, Colors.black);
    expect(text.style?.fontSize, 18.0);
  });
//To check the text color, font size and font weight of the heading
  testWidgets('To test color, fontSize and fontWeight of text heading',
      (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    final text = tester.widget<Text>(find.text(kHeading));

    expect(text.style?.color, Colors.black);
    expect(text.style?.fontSize, 25.0);
    expect(text.style?.fontWeight, FontWeight.bold);
  });

//to test the vertical swipe of the app
  testWidgets(
    "Testing the scroll function of Pageview widget",
    (WidgetTester tester) async {
      await tester.dragUntilVisible(
        expectedWidget, // what you want to find
        find.byType(PageView), // widget you want to scroll
        const Offset(0, -750), // delta to move
      );
    },
  );

  testWidgets(
    "check the slider widget",
    (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());
      await tester.drag(find.byType(PageView), const Offset(0, 150));
      await tester.pumpAndSettle();

      expect(find.byKey(Pv), findsOneWidget);
    },
  );

// Testing the swipe action
  testWidgets("Pan doesn't crash", (WidgetTester tester) async {
    Offset? panDelta;
    String? swipeDirection;

    await tester.pumpWidget(
      GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
          if (swipeDirection == 'left') {
            print('Swiped right');
          }
        },
        child: Container(),
      ),
    );
    await tester.pump();

    expect(swipeDirection, isNull);

    await tester.dragFrom(const Offset(0, 0), const Offset(100, 0));

    expect(swipeDirection, 'left');
  });
}

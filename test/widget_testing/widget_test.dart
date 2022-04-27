// import 'package:integration_test/integration_test.dart';
import 'package:flutter/material.dart';
import 'package:inshorts_clone/constants.dart';
import 'package:inshorts_clone/main.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:inshorts_clone/newsCard.dart';
import 'package:inshorts_clone/news_class.dart';
import 'package:inshorts_clone/constants.dart';
import 'package:inshorts_clone/news_screen.dart';
import 'package:network_image_mock/network_image_mock.dart';

Widget makeTestableWidget() => MaterialApp(
    home: Image.network(
        'https://media.npr.org/assets/img/2020/04/28/gettyimages-1205434458_custom-c47a8defd1fa1c6c825b88646de9f1873aff8d0a.jpg'));

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
}

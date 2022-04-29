import 'package:flutter/material.dart';

import 'package:inshorts_clone/provider/card_provider.dart';
import 'constants.dart';
import 'news_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => NewsDataCard(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: kBackgroundColor,
            textTheme:
                Theme.of(context).textTheme.apply(displayColor: kTextColor),
          ),
          home: const NewsScreen(),
        ),
      );
}

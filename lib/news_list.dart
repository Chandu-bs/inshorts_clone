import 'dart:core';

import 'package:flutter/material.dart';
import 'package:inshorts_clone/constants.dart';
import 'package:inshorts_clone/news_class.dart';
import 'package:inshorts_clone/news_screen.dart';
import 'constants.dart';

class NewsData extends ChangeNotifier {
  int _newsNumber = 0;

  final List<News> _newsData = [
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
    News(image: kImage1, newsHead: kHeading, newsDetails: kDetails),
  ];

  void nextNews() {
    if (_newsNumber < _newsData.length - 1) {
      _newsNumber++;
    }
  }

  String getNewsHead() {
    return _newsData[_newsNumber].newsHead;
  }

  String getNewsDetails() {
    return _newsData[_newsNumber].newsDetails;
  }

  AssetImage getImage() {
    return _newsData[_newsNumber].image;
  }
}

import 'package:flutter/material.dart';

class News {
  String newsHead;
  String newsDetails;
  AssetImage image;

  News(
      {required this.image, required this.newsHead, required this.newsDetails});
}

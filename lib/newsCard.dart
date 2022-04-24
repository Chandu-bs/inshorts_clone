import 'package:flutter/material.dart';
import 'constants.dart';
import 'news_list.dart';

class NewsCard extends StatefulWidget {
  NewsCard({
    Key? key,
    required this.size,
    required this.headings,
    this.info,
  }) : super(key: key);

  final Size size;
  final String headings;
  final info;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  String headings = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: widget.size.height * 0.4,
        decoration: const BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fill,
            image: kImage1,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          headings,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 25.0,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          details,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 18.0,
          ),
        ),
      ),
    ]);
  }
}

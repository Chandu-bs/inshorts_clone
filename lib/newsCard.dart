import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';
import 'news_list.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({
    required this.size,
    required this.headings,
    required this.info,
    required this.image,
  });

  final Size size;
  final String headings;
  final String info;
  final ImageProvider image;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: widget.size.height * 0.4,
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.bottomCenter,
            fit: BoxFit.fill,
            image: widget.image,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.headings,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          widget.info,
          style: const TextStyle(
            color: kTextColor,
            fontSize: 18.0,
          ),
        ),
      ),
    ]);
  }
}

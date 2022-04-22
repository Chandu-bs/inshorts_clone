import 'package:flutter/material.dart';
import 'constants.dart';

class NewsCard extends StatefulWidget {
  const NewsCard({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<NewsCard> createState() => _NewsCardState();
}

class _NewsCardState extends State<NewsCard> {
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
      const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          heading,
          style: TextStyle(
            color: kTextColor,
            fontSize: 25.0,
          ),
        ),
      ),
      const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          details,
          style: TextStyle(
            color: kTextColor,
            fontSize: 18.0,
          ),
        ),
      ),
    ]);
  }
}

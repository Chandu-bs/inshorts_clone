import 'package:flutter/material.dart';
import 'package:inshorts_clone/main.dart';
import 'package:inshorts_clone/newsCard.dart';
import 'package:inshorts_clone/provider/card_provider.dart';
import 'constants.dart';
import 'package:provider/provider.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final PageController _controller =
      PageController(initialPage: 0, viewportFraction: 1.0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    String? swipeDirection;
    return Scaffold(
      key: scaffold,
      body: SafeArea(
        child: SizedBox.expand(
          child: GestureDetector(
            onPanUpdate: (details) {
              swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
              final provider =
                  Provider.of<NewsDataCard>(context, listen: false);
              provider.updatePosition(details, context);
            },
            child: PageView(
                controller: _controller,
                scrollDirection: Axis.vertical,
                children: [
                  NewsCard(
                      size: size,
                      headings: kHeading,
                      info: kDetails,
                      image: kImage1),
                  NewsCard(
                      size: size,
                      headings: kHeading2,
                      info: kDetails2,
                      image: kImage2),
                  NewsCard(
                      size: size,
                      headings: kHeading3,
                      info: kDetails3,
                      image: kImage3),
                  NewsCard(
                      size: size,
                      headings: kHeading4,
                      info: kDetails4,
                      image: kImage4),
                  NewsCard(
                      size: size,
                      headings: kHeading5,
                      info: kDetails5,
                      image: kImage5),
                  NewsCard(
                      size: size,
                      headings: kHeading6,
                      info: kDetails6,
                      image: kImage6),
                  NewsCard(
                      size: size,
                      headings: kHeading7,
                      info: kDetails7,
                      image: kImage7),
                  NewsCard(
                      size: size,
                      headings: kHeading8,
                      info: kDetails8,
                      image: kImage8),
                  NewsCard(
                      size: size,
                      headings: kHeading9,
                      info: kDetails9,
                      image: kImage1),
                  NewsCard(
                      size: size,
                      headings: kHeading10,
                      info: kDetails10,
                      image: kImage10)
                ]),
          ),
        ),
      ),
    );
  }
}

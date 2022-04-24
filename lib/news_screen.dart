import 'package:flutter/material.dart';
import 'package:inshorts_clone/main.dart';
import 'constants.dart';
import 'newscard.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchURL() async {
  const url = 'https://www.news18.com/';
  if (await canLaunch(url)) {
    await launch(url,
        forceSafariVC: true, forceWebView: true, enableJavaScript: true);
  } else {
    throw 'Could not launch $url';
  }
}

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
      body: SafeArea(
        child: GestureDetector(
          onPanUpdate: (details) {
            swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
          },
          onPanEnd: (details) {
            // if (swipeDirection == null) {
            //   return ;
            // }
            if (swipeDirection == 'left') {
              setState(() {
                _launchURL();
              });
            }
            // if (swipeDirection == 'right') {
            //   //handle swipe right event
            // }
          },
          child: PageView(
            scrollDirection: Axis.vertical,
            controller: _controller,
            children: [
              NewsCard(
                size: size,
              ),
              NewsCard(
                size: size,
              ),
              NewsCard(
                size: size,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

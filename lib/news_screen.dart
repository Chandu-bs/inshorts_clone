import 'package:flutter/material.dart';
import 'package:inshorts_clone/main.dart';
import 'constants.dart';
import 'newscard.dart';
import 'package:url_launcher/url_launcher.dart';

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
    return Scaffold(
      body: SafeArea(
        child: Listener(
          onPointerMove: (moveEvent) {
            if (moveEvent.delta.dx < 0) {
              _launchURL();
            }
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

// String? swipeDirection;
// GestureDetector(
//       onPanUpdate: (details) {
//         swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
//       },
//       onPanEnd: (details) {
//         if (swipeDirection == null) {
//           return ;
//         }
//         if (swipeDirection == 'left') {
//           //handle swipe left event
//         }
//         if (swipeDirection == 'right') {
//           //handle swipe right event
//         }
//       },
//       child: //child widget
//     );

// setState(() async {
//                 const url = 'https://fwd.wiki';
//                 if (await canLaunch(url)) {
//                   await launch(url);
//                 } else {
//                   throw 'Could not launch $url';
//                 }
//               });

_launchURL() async {
  const url = 'https://fwd.wiki';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

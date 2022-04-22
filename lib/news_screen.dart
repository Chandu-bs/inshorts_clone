import 'package:flutter/material.dart';
import 'package:inshorts_clone/main.dart';
import 'constants.dart';
import 'newscard.dart';

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
            if (moveEvent.delta.dx > 0) {
              print("swipe right");
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

// class LinkView extends StatefulWidget {
//   const LinkView({Key? key}) : super(key: key);

//   @override
//   _LinkViewSwipe createState() => _LinkViewSwipe();
// }

// class _LinkViewSwipe extends State<NewsView> {
//   final PageController _controller =
//       PageController(initialPage: 0, viewportFraction: 1.0);

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return PageView(
//       controller: _controller,
//       scrollDirection: Axis.horizontal,
//       children: [
//         _launchURL,
//       ],
//     );
//   }
// }

// _launchURL() async {
//   const url = 'https://fwd.wiki';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }
// }
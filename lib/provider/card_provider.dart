import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDataCard extends ChangeNotifier {
  String? swipeDirection;
  String? scrollDirection;

  Future<void> _launchURL() async {
    const url = 'https://www.news18.com/';
    if (await canLaunch(url)) {
      await launch(url,
          forceSafariVC: true, forceWebView: true, enableJavaScript: true);
    } else {
      throw 'Could not launch $url';
    }
  }

  void startPosition(DragStartDetails details) {}

  void updatePosition(DragUpdateDetails details) {
    swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
    // scrollDirection = details.delta.dy < 0 ? 'top' : 'bottom'; //(This will make scroll in top and bottom)
    if (swipeDirection == 'left') {
      _launchURL();
    }
    notifyListeners();
  }

  void endPosition() {}
}

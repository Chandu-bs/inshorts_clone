import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';

class NewsDataCard extends ChangeNotifier {
  String? swipeDirection;
  String? scrollDirection;

  Future<void> _launchURL(BuildContext context) async {
    final theme = Theme.of(context);
    try {
      await launch(
        'https://www.hindustantimes.com/',
        customTabsOption: CustomTabsOption(
          toolbarColor: theme.primaryColor,
          enableDefaultShare: true,
          enableUrlBarHiding: true,
          showPageTitle: true,
          animation: CustomTabsSystemAnimation.slideIn(),
          extraCustomTabs: const <String>[
            // ref. https://play.google.com/store/apps/details?id=org.mozilla.firefox
            'org.mozilla.firefox',
            // ref. https://play.google.com/store/apps/details?id=com.microsoft.emmx
            'com.microsoft.emmx',
          ],
        ),
        safariVCOption: SafariViewControllerOption(
          preferredBarTintColor: theme.primaryColor,
          preferredControlTintColor: Colors.white,
          barCollapsingEnabled: true,
          entersReaderIfAvailable: false,
          dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        ),
      );
    } catch (e) {
      // An exception is thrown if browser app is not installed on Android device.
      debugPrint(e.toString());
    }
  }

  void startPosition(DragStartDetails details) {}

  void updatePosition(DragUpdateDetails details, BuildContext context) {
    swipeDirection = details.delta.dx < 0 ? 'left' : 'right';
    // scrollDirection = details.delta.dy < 0 ? 'top' : 'bottom'; //(This will make scroll in top and bottom)
    if (swipeDirection == 'left') {
      _launchURL(context);
    }
    notifyListeners();
  }

  void endPosition() {}
}

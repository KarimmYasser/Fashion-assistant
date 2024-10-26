import 'package:flutter/material.dart';

import '../tap_map.dart';
import '../widgets/custom_navbar.dart';

class TotalScreens extends StatefulWidget {
  const TotalScreens({super.key});

  @override
  State<TotalScreens> createState() => _TotalScreensState();
}

class _TotalScreensState extends State<TotalScreens> {
  int _activeScreen = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        controller: _pageController,
        onPageChanged: (int index) {
          setState(() {
            _activeScreen = index;
          });
        },
        children: <Widget>[
          screenDetails[0]['screenName'] as Widget,
          screenDetails[1]['screenName'] as Widget,
          screenDetails[2]['screenName'] as Widget,
          screenDetails[3]['screenName'] as Widget,
          screenDetails[4]['screenName'] as Widget,
        ],
      ),
      bottomNavigationBar: CustomNavbar(
        activeScreen: _activeScreen,
        ontap: (int index) {
          _pageController.animateToPage(index,
              duration: const Duration(microseconds: 400), curve: Curves.ease);
        },
      ),
    );
  }
}

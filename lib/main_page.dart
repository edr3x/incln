import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:instcln/constants/global_variables.dart';
import 'package:instcln/home_page.dart';

import 'blank_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _pageViewController = PageController();
  int _activePage = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const BlankPage(),
    const BlankPage(),
    const BlankPage(),
    const BlankPage(),
  ];

  @override
  void dispose() {
    _pageViewController.dispose();
    super.dispose();
  }

  static const List<IconData> _activeIcons = [
    CupertinoIcons.home,
    CupertinoIcons.search,
    CupertinoIcons.add_circled,
    CupertinoIcons.videocam_circle,
    Icons.person_3_rounded
  ];
  static const List<IconData> _inactiveIcons = [
    Icons.home_outlined,
    Icons.search,
    Icons.add_box_outlined,
    Icons.video_library_outlined,
    CupertinoIcons.person
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        children: _widgetOptions,
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: GlobalVariables.backgroundColor,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _activePage,
        onTap: (index) {
          _pageViewController.animateToPage(index,
              duration: const Duration(milliseconds: 200), curve: Curves.bounceOut);
        },
        items: List.generate(
          _activeIcons.length,
          (index) {
            return BottomNavigationBarItem(
              icon: Icon(
                _inactiveIcons[index],
              ),
              activeIcon: Icon(
                _activeIcons[index],
              ),
              label: '', // Remove label
            );
          },
        ),
      ),
    );
  }
}

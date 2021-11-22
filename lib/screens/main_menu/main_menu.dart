import 'package:flutter/material.dart';
import 'package:mynusa/screens/attention/attention.dart';
import 'package:mynusa/screens/home/home.dart';
import 'package:mynusa/screens/setting/setting.dart';
import 'package:mynusa/services/colors.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 1;
  final pages = [Attention(), Home(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.warning,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.warning,
                  size: 30,
                ),
                label: "Warning"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.settings,
                  size: 30,
                ),
                label: "Setting"),
          ],
          iconSize: 30,
          selectedFontSize: 14,
          unselectedFontSize: 14,
          selectedItemColor: Color(int.parse(primaryColor)),
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ),
        body: IndexedStack(
          index: _currentIndex,
          children: pages,
        ));
  }
}

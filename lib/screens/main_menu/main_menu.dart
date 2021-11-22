import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
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
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.warning_rounded,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.warning_rounded,
                  size: 30,
                ),
                label: S.of(context).attention),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.home_rounded,
                  size: 30,
                ),
                label: S.of(context).home),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings_rounded,
                  size: 30,
                ),
                activeIcon: Icon(
                  Icons.settings_rounded,
                  size: 30,
                ),
                label: S.of(context).setting),
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

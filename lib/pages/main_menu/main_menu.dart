import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/pages/attention/page_attention.dart';
import 'package:mynusa/pages/home/page_home.dart';
import 'package:mynusa/pages/setting/page_setting.dart';
import 'package:mynusa/services/colors.dart';

class MainMenu extends StatefulWidget {
  MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int _currentIndex = 1;
  final pages = [AttentionPage(), HomePage(), SettingPage()];

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

import 'package:flutter/material.dart';
import 'package:mynusa/screens/home/items.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

import 'home_app_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: !themeChange.darkTheme ? Color(int.parse(primaryColor)) : Color(int.parse(mediumGrey)),
        toolbarHeight: kToolbarHeight + 8,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: HomeAppBar(),
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.white),
                onPressed: (){

                },
              )
            ],
          ),
        )

      ),
      body: Container(
        child: Items(),
        decoration: BoxDecoration(
            color: !themeChange.darkTheme ? Color(int.parse(primaryColor)) : Color(int.parse(mediumGrey)),
            borderRadius: new BorderRadius.only(
                bottomLeft: const Radius.circular(16.0),
                bottomRight: const Radius.circular(16.0))),
      ),
    );
  }
}

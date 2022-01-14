import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/pages/notifikasi/switch_tile_live_chat.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class NotifikasiPage extends StatelessWidget {
  const NotifikasiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: !themeChange.darkTheme
                ? Color(int.parse(primaryColor))
                : Color(int.parse(darkGrey)),
            automaticallyImplyLeading: false,
            title: AutoSizeText(
              S.of(context).notification,
              maxLines: 1,
              style: TextStyle(
                  fontFamily: "Nunito",
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                size: 24,
              ),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: Icon(
                    Icons.history,
                    size: 32,
                  ),
                  color: Colors.white,
                  onPressed: () {

                  })
            ],
          ),
          body: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                LiveChatSwitchTile(),
              ],
            ),
          )
      ),
    );
  }
}

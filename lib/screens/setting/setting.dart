import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/screens/setting/tile_dark_mode.dart';
import 'package:mynusa/screens/setting/tile_feedback.dart';
import 'package:mynusa/screens/setting/tile_logout.dart';
import 'package:mynusa/screens/setting/tile_notification.dart';
import 'package:mynusa/screens/setting/tile_rate_mynusa_app.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'tile_edit_profile.dart';
import 'tile_language.dart';
class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  S.of(context).setting,
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 24,
                ),
                EditProfileTile(),
                LanguageTile(),
                DarkModeTile(),
                NotificationTile(),
                FeedbackTile(),
                RateMynusaAppTile(),
                LogoutTile(),
              ],
            ),
          )),
    );
  }
}

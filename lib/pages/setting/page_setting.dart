import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/pages/setting/switch_tile_dark_mode.dart';
import 'package:mynusa/pages/setting/tile_feedback.dart';
import 'package:mynusa/pages/setting/tile_logout.dart';
import 'package:mynusa/pages/setting/tile_notification.dart';
import 'package:mynusa/pages/setting/tile_rate_mynusa_app.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

import 'tile_edit_profile.dart';
import 'tile_language.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
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
                DarkModeSwitchTile(),
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

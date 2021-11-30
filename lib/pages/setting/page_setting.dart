import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/pages/setting/profile.dart';
import 'package:mynusa/pages/setting/switch_tile_dark_mode.dart';
import 'package:mynusa/pages/setting/tile_feedback.dart';
import 'package:mynusa/pages/setting/tile_logout.dart';
import 'package:mynusa/pages/setting/tile_notification.dart';
import 'package:mynusa/pages/setting/tile_rate_mynusa_app.dart';

import 'tile_edit_profile.dart';
import 'tile_language.dart';
class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  String name = "";
  String phoneNumber = "";

  Future<void> _fetchCustomerDetail() async {
    name = "Willy Pratama";
    phoneNumber = "+6282139750366";
  }
  @override
  void initState() {
    _fetchCustomerDetail();
    super.initState();
  }
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
                Profile(name, phoneNumber),
                const SizedBox(
                  height: 16,
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

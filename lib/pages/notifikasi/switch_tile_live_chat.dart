import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class LiveChatSwitchTile extends StatefulWidget {
  const LiveChatSwitchTile({Key? key}) : super(key: key);

  @override
  State<LiveChatSwitchTile> createState() => _LiveChatSwitchTileState();
}

class _LiveChatSwitchTileState extends State<LiveChatSwitchTile> {
  bool liveChatStatus = false;
  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      title: Text(
        "Live Chat",
        style: TextStyle(
            fontFamily: "Nunito",
            fontSize: 16,
            fontWeight: FontWeight.w700),
      ),
      value: liveChatStatus,
      onChanged: (bool value) {
        setState(() {
          liveChatStatus = value;
        });
      },
      activeColor: Color(int.parse(primaryColor)),
      secondary: Icon(PhosphorIcons.chat),
    );
  }
}

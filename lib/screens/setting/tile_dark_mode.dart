import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class DarkModeTile extends StatefulWidget {
  const DarkModeTile({Key? key}) : super(key: key);

  @override
  State<DarkModeTile> createState() => _DarkModeTileState();
}

class _DarkModeTileState extends State<DarkModeTile> {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: SwitchListTile(
        title: Text(
          S.of(context).dark_mode,
          style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        value: themeChange.darkTheme,
        onChanged: (bool value) {
          setState(() {
            themeChange.darkTheme = value;
          });
        },
        secondary: const Icon(Icons.dark_mode_outlined),
      ),
    );
  }
}

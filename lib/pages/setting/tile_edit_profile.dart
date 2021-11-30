import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';


class EditProfileTile extends StatelessWidget {
  const EditProfileTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
        leading: Icon(PhosphorIcons.user_bold),
        title: Text(
          S.of(context).edit_profile,
          style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        onTap: () {
          Navigator.pushNamed(context, "/profile");
        },
      ),
    );
  }
}



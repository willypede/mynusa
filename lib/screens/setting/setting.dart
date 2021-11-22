import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
                  "Setting",
                  style: TextStyle(
                      fontFamily: "Nunito",
                      fontSize: 20,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 24,
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(PhosphorIcons.user_fill),
                  title: const Text(
                    "Edit Profile",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/pakan");
                  },
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(PhosphorIcons.translate),
                  title: const Text(
                    "Language",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/pakan");
                  },
                ),
                SwitchListTile(
                  title: const Text(
                    'Dark Mode',
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
                  secondary: const Icon(Icons.dark_mode),
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(Icons.notifications),
                  title: const Text(
                    "Notifications",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/pakan");
                  },
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(Icons.feedback),
                  title: const Text(
                    "Feedback",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/penyakit");
                  },
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(Icons.star_rate),
                  title: const Text(
                    "Rate MyNusa App",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/perawatan");
                  },
                ),
                ListTile(
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 18,
                  ),
                  leading: Icon(PhosphorIcons.sign_out),
                  title: const Text(
                    "Logout",
                    style: TextStyle(
                        fontFamily: "Nunito",
                        fontSize: 16,
                        fontWeight: FontWeight.w700),
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, "/perawatan");
                  },
                ),
              ],
            ),
          )),
    );
  }
}

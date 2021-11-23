import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class TroubleTicketsPage extends StatelessWidget {
  const TroubleTicketsPage({Key? key}) : super(key: key);

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
            S.of(context).trouble_tickets,
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
        ),
        body: ,
      ),
    );
  }
}

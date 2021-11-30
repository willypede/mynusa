import 'package:auto_size_text/auto_size_text.dart';
import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class CctvPage extends StatefulWidget {
  const CctvPage({Key? key}) : super(key: key);

  @override
  State<CctvPage> createState() => _CctvPageState();
}

class _CctvPageState extends State<CctvPage> {
  final String url = "https://satisfied-toad-2148.dataplicity.io/?action=stream";
  final FijkPlayer player = FijkPlayer();

  @override
  void initState() {
    super.initState();
    player.setDataSource(
        "https://youtu.be/-oKp1m_T19c",
        autoPlay: true);
  }

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
              "CCTV",
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
      body: FijkView(
        player: player,
      )
        )
    );
  }

  @override
  void dispose() {
    super.dispose();
    player.release();
  }
}

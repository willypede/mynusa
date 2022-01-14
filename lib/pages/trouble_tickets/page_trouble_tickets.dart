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
      child: DefaultTabController(
        length: 2,
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
          body: Column(
            children: [
              SizedBox(
                height: 50,
                child: AppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: !themeChange.darkTheme ? Color(int.parse(primaryColor)) : Color(int.parse(darkGrey)),
                  bottom: TabBar(
                    indicatorColor: Colors.white,
                    labelColor: Colors.white,

                    tabs: [
                      Tab(
                        child: Text(
                          "OPEN",
                          style: TextStyle(
                            fontFamily: "Nunito",
                            color: Color(int.parse(mediumGrey))
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "CLOSED",
                          style: TextStyle(
                              fontFamily: "Nunito",
                              color: Color(int.parse(mediumGrey))
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // create widgets for each tab bar here
              Expanded(
                child: TabBarView(
                  children: [
                    // first tab bar view widget
                    Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          'Open',
                        ),
                      ),
                    ),

                    // second tab bar viiew widget
                    Container(
                      color: Colors.pink,
                      child: Center(
                        child: Text(
                          'Closed',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

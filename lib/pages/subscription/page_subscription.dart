import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:mynusa/generated/l10n.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/decimals_separator.dart';
import 'package:provider/provider.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

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
            S.of(context).subscription,
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
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).package,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Nama Pakettttt",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).price,
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 12,
                            color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        DecimalsSeparator.convertToRupiah(0),
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).address,
                        style: TextStyle(
                            fontFamily: "Nunito", fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Kandangan/Kembangan Sidoarjo",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.of(context).package_period,
                        style: TextStyle(
                            fontFamily: "Nunito", fontSize: 12, color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "PACKAGE PERIOD",
                        style: TextStyle(
                            fontFamily: "Nunito",
                            fontSize: 14,
                            fontWeight: FontWeight.w700),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "*",
                            style: TextStyle(
                              fontFamily: "Nunito",
                              color: Colors.red
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          Flexible(
                            child: Text(
                              S.of(context).package_period_note,
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 10,
                                  color: Color(int.parse(mediumGrey))),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Ink(
                              decoration: ShapeDecoration(
                                color: Colors.red,
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 16),
                                child: Text(
                                  S.of(context).no.toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          InkWell(
                            child: Ink(
                              decoration: ShapeDecoration(
                                color: Color(int.parse(primaryColor)),
                                shape: RoundedRectangleBorder(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(4.0)),
                                ),
                              ),
                              child: Container(
                                padding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 16),
                                child: Text(
                                  S.of(context).renew.toUpperCase(),
                                  style: TextStyle(
                                      fontFamily: "Nunito",
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            onTap: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

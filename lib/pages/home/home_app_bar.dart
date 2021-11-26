import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/no_glow_scroll_view.dart';
import 'package:provider/provider.dart';
class HomeAppBar extends StatefulWidget {
  HomeAppBar({Key? key}) : super(key: key);

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  List<String> arrSubscription = [
    "Broadband Wireless BRONZE 500000 Mbps",
    "VPN Basic",
  ];
  String _selectedSubscription = "Broadband Wireless BRONZE 500000 Mbps";

  void showSubscription(Color color){
    showMaterialModalBottomSheet(
        backgroundColor: color,
        context: context,
        expand: false,
        bounce: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        builder: (context) => Container(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Flexible(
                child: ScrollConfiguration(
                  behavior: NoGlowScrollView(),
                  child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: EdgeInsets.only(
                            bottom:
                            MediaQuery.of(context).viewInsets.bottom),
                        physics: BouncingScrollPhysics(),
                        itemCount: arrSubscription.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                _selectedSubscription = arrSubscription[index];
                              });
                              Navigator.pop(context);
                            },
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.stretch,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: 16),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Jalan Barata Jaya XI no. 17, Gubeng, Surabaya, Jawa Timur",
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontFamily: "Nunito",
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.w700
                                                ),
                                              ),
                                              Text(
                                                arrSubscription[index],
                                                textAlign: TextAlign.left,
                                                maxLines: 2,
                                                style: TextStyle(
                                                    fontFamily: "Nunito",
                                                    fontSize: 12,
                                              ),
                                              )
                                            ],
                                          )
                                        ),
                                        Container(
                                          width: 8,
                                        ),
                                        Align(
                                          alignment: Alignment.centerRight,
                                          child: _selectedSubscription == arrSubscription[index]
                                              ? Icon(
                                            PhosphorIcons.check_bold,
                                            color: Colors.greenAccent,
                                            size: 28,
                                          )
                                              : Icon(
                                            Icons.check,
                                            size: 0,
                                          ),
                                        )
                                      ],
                                    )),
                                index != arrSubscription.length - 1
                                    ? Container(
                                  height: 1,
                                  color: Colors.grey,
                                )
                                    : Container()
                              ],
                            ),
                          );
                        },
                      )),
                ),
              ),
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Container(
        child: InkWell(
          splashColor: Colors.transparent,
          child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              _selectedSubscription,
                              maxLines: 1,
                              minFontSize: 9,
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white
                              ),
                            ),
                            AutoSizeText(
                              "Kandangan/Krembung Sidoarjo",
                              maxLines: 1,
                              minFontSize: 8,
                              style: TextStyle(
                                  fontFamily: "Nunito",
                                  fontSize: 11,
                                  color: Colors.white
                              ),
                            ),
                          ],
                        ),
                      ),
                      Transform.rotate(
                        angle: 90 * math.pi / 180,
                        child: Icon(
                          Icons.arrow_right,
                          color: Colors.white,
                          size: 24,
                        ),
                      )
                    ],
                  ))),
          onTap: (){
            if(!themeChange.darkTheme){
              showSubscription(Colors.white);
            }
            else{
              showSubscription(Color(int.parse(mediumGrey)));
            }
          },
        )
    );
  }
}

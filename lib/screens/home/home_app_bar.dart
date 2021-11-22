import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
class HomeAppBar extends StatelessWidget {
  HomeAppBar({Key? key}) : super(key: key);
  String packageName = "Broadband Wireless BRONZE 5 Mbps";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: (){
          },
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
                              packageName,
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
        )
    );
  }
}

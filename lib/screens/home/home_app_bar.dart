import 'package:flutter/material.dart';
import 'package:mynusa/services/colors.dart';
import 'dart:math' as math;
class HomeAppBar extends StatelessWidget {
  HomeAppBar({Key? key}) : super(key: key);
  String packageName = "VPN Basic";

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GestureDetector(
          onTap: (){
            print("wow");
          },
          child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 4),
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [

                          Text(
                            packageName,
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),
                          ),
                          Text(
                            "Kandangan/Krembung Sidoarjo",
                            style: TextStyle(
                                fontFamily: "Nunito",
                                fontSize: 11,
                                color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
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

import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/services/colors.dart';
import 'package:mynusa/services/no_glow_scroll_view.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
        behavior: NoGlowScrollView(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: ShapeDecoration(
                                  color: Color(int.parse(gold)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  splashColor: Colors.transparent,
                                  onTap: () {},
                                  child: Icon(
                                    PhosphorIcons.coin_thin,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Invoice",
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: ShapeDecoration(
                                  color: Colors.green,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: InkWell(
                                  child: Icon(
                                    PhosphorIcons.globe_thin,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(12),
                                  splashColor: Colors.transparent,
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Internet Usage",
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: ShapeDecoration(
                                  color: Colors.yellowAccent[700],
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(12),
                                  splashColor: Colors.transparent,
                                  child: Icon(
                                    PhosphorIcons.clipboard_text_thin,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Trouble Tickets",
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {},
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: ShapeDecoration(
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(12),
                                  splashColor: Colors.transparent,
                                  child: Icon(
                                    PhosphorIcons.wifi_high_thin,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Wifi.id",
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          child: Column(
                            children: [
                              Container(
                                width: 72,
                                height: 72,
                                decoration: ShapeDecoration(
                                  color: Color(int.parse(primaryColor)),
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(12.0)),
                                  ),
                                ),
                                child: InkWell(
                                  onTap: () {},
                                  borderRadius: BorderRadius.circular(12),
                                  splashColor: Colors.transparent,
                                  child: Icon(
                                    PhosphorIcons.package_thin,
                                    size: 38,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Subscription",
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}

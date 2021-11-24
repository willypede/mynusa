import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';
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
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 64),
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
                          onTap: () {
                            Navigator.pushNamed(context, "/unpaidInvoices");
                          },
                          child: Column(
                            children: [
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
                                  width: 72,
                                  height: 72,
                                  decoration: ShapeDecoration(
                                    color: Color(int.parse(cyan)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      Navigator.pushNamed(context, "/unpaidInvoices");
                                    },
                                    child: Icon(
                                      PhosphorIcons.coin_light,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                  )
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                S.of(context).invoice,
                                textAlign: TextAlign.center,
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
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
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
                                      PhosphorIcons.globe_light,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                    borderRadius: BorderRadius.circular(12),
                                    splashColor: Colors.transparent,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                S.of(context).internet_usage,
                                textAlign: TextAlign.center,
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
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
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
                                      PhosphorIcons.clipboard_text_light,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                S.of(context).trouble_tickets,
                                textAlign: TextAlign.center,
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
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
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
                                      PhosphorIcons.wifi_high_light,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Wifi.id",
                                textAlign: TextAlign.center,
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
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
                                  width: 72,
                                  height: 72,
                                  decoration: ShapeDecoration(
                                    color: Color(int.parse(indigo)),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    splashColor: Colors.transparent,
                                    child: Icon(
                                      PhosphorIcons.package_light,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(context, "/subscription");
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                S.of(context).subscription,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/subscription");
                          },
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                        GestureDetector(
                          child: Column(
                            children: [
                              Material(
                                elevation: 4,
                                shadowColor: Colors.black,
                                borderRadius: BorderRadius.circular(12),
                                child: Ink(
                                  width: 72,
                                  height: 72,
                                  decoration: ShapeDecoration(
                                    color: Colors.black,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                  ),

                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(12),
                                    splashColor: Colors.transparent,
                                    child: Icon(
                                      PhosphorIcons.camera_bold,
                                      size: 38,
                                      color: Colors.white,
                                    ),
                                    onTap: () {
                                      Navigator.pushNamed(context, "/cctv");
                                    },
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Text(
                                "CCTV",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: "Nunito", color: Colors.white),
                              )
                            ],
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, "/cctv");
                          },
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

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:mynusa/services/colors.dart';

class SplashScreenLoading extends StatelessWidget {
  const SplashScreenLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(64),
      child: SpinKitFadingCube(
        color: Color(int.parse(primaryColor)),
        size: 32.0,
      ),
    );
  }
}

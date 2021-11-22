import 'package:flutter/cupertino.dart';

class NoGlowScrollView extends ScrollBehavior{
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
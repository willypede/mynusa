import 'package:flutter/material.dart';
import 'package:mynusa/services/colors.dart';
class Attention extends StatelessWidget {
  const Attention({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(int.parse(primaryColor)),
      ),
    );
  }
}

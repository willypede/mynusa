import 'package:flutter/material.dart';

class MynusaImage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 64),
        child: Image(
          image: AssetImage(
              "assets/nusapond-white.png"
          ),
        ),
      )
    );
  }
}

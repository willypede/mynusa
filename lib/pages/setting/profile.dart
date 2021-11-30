import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  Profile(this.name, this.phoneNumber);

  final name, phoneNumber;


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: CircleAvatar(
            radius: 58,
            backgroundImage: NetworkImage("https://static.wikia.nocookie.net/dotaunderlords_gamepedia_en/images/7/7b/Void_Spirit_portrait_icon.png/revision/latest/scale-to-width-down/120?cb=20191129220544"),
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AutoSizeText(
              name,
              style: TextStyle(
                fontFamily: "Nunito",
                fontWeight: FontWeight.w700,
                fontSize: 18
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              phoneNumber,
              style: TextStyle(
                fontFamily: "Nunito"
              ),
            )
          ],
        )
      ],
    );
  }
}

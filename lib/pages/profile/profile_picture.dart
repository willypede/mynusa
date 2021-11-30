import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/services/colors.dart';

class ProfilePicture extends StatefulWidget {
  const ProfilePicture({Key? key}) : super(key: key);

  @override
  State<ProfilePicture> createState() => _ProfilePictureState();
}

class _ProfilePictureState extends State<ProfilePicture> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: 58,
        backgroundImage: NetworkImage("https://static.wikia.nocookie.net/dotaunderlords_gamepedia_en/images/7/7b/Void_Spirit_portrait_icon.png/revision/latest/scale-to-width-down/120?cb=20191129220544"),
        child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomRight,
                child: CircleAvatar(

                    radius: 18,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(

                        radius: 16,
                        backgroundColor: Color(int.parse(primaryColor)),
                        child: Icon(PhosphorIcons.pencil,color: Colors.white,)
                    )
                ),
              ),
            ]
        ),
      ));
  }
}

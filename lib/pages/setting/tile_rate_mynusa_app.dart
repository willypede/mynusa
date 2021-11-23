import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/generated/l10n.dart';

class RateMynusaAppTile extends StatelessWidget {
  const RateMynusaAppTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(splashColor: Colors.transparent),
      child: ListTile(
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Colors.grey,
          size: 18,
        ),
        leading: Icon(PhosphorIcons.star_bold),
        title: Text(
          S.of(context).rate_mynusa,
          style: TextStyle(
              fontFamily: "Nunito",
              fontSize: 16,
              fontWeight: FontWeight.w700),
        ),
        onTap: () {
          Navigator.pushNamed(context, "/perawatan");
        },
      ),
    );
  }
}

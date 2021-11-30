import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "Pak Willy"
          ),
          const SizedBox(
            width: 8,
          ),
          GestureDetector(
            onTap: (){},
            child:  Material(
              shadowColor: Colors.black,
              child: InkWell(
                splashColor: Colors.transparent,
                onTap: () {
                },
                child: Text(
                  "Edit"
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

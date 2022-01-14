import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/services/colors.dart';

class Name extends StatelessWidget {
  const Name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.text = "Pak Willy";
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              keyboardType: TextInputType.emailAddress,
              enabled: false,
              controller: controller,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(8),
                  prefixIcon: Icon(PhosphorIcons.identification_badge, size: 28, color: Color(int.parse(mediumGrey))),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 1.0,
                        style: BorderStyle.solid,
                        color: Colors.grey),
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                  labelText: "Nama",
                  labelStyle: TextStyle(
                      fontFamily: "Nunito", color: Colors.grey)),
              style: const TextStyle(fontFamily: "Nunito"),
            ),
          ],
        ),
      ),
    );
  }
}

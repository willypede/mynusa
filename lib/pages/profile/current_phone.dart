import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:mynusa/services/colors.dart';

class CurrentPhone extends StatelessWidget {
  const CurrentPhone({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController();
    controller.text = "+6282139750366";
    return Card(
      elevation: 4,
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                enabled: false,
                controller: controller,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    prefixIcon: Icon(PhosphorIcons.phone, size: 28, color: Color(int.parse(mediumGrey))),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: 1.0,
                          style: BorderStyle.solid,
                          color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                    labelText: "Current Phone",
                    labelStyle: TextStyle(
                        fontFamily: "Nunito", color: Colors.grey)),
                style: const TextStyle(fontFamily: "Nunito"),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton.icon(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(int.parse(primaryColor)))
              ),
                onPressed: (){

                },
                icon: Icon(PhosphorIcons.plus),
                label: Text(
                  "Add Phone Number"
                )),
            const SizedBox(
              height: 8,
            ),
            Text(
              "Info: The phone number you add will get access to your account!",
              style: TextStyle(
                fontFamily: "Nunito",
                fontSize: 12,
                color: Color(int.parse(mediumGrey))
              ),
            )
          ],
        ),
      ),
    );
  }
}

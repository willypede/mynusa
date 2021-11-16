import 'package:flutter/material.dart';

class PhoneNumber extends StatelessWidget {
  final tecPhoneNumber;
  PhoneNumber(this.tecPhoneNumber);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        keyboardType: TextInputType.phone,
        controller: tecPhoneNumber,
        decoration: const InputDecoration(
            contentPadding: EdgeInsets.all(8),
            labelText: "Phone Number",
            labelStyle: TextStyle(
                color: Colors.grey)),
        style: TextStyle(),
      ),
    );
  }
}

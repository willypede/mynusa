import 'package:flutter/material.dart';

class SendOtpButton extends StatelessWidget {
  final tCountryCode;
  final tecPhoneNumber;

  SendOtpButton(this.tCountryCode, this.tecPhoneNumber);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text("Send OTP"),
      onPressed: () {
        print(tCountryCode + tecPhoneNumber.text);
        Navigator.pushNamed(context, "/mainMenu");
      },
    );
  }
}

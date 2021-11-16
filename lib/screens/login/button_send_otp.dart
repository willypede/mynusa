import 'package:flutter/material.dart';

class SendOtpButton extends StatelessWidget {
  final tCountryCode;
  final tecPhoneNumber;
  SendOtpButton(this.tCountryCode, this.tecPhoneNumber);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: (){
          print(tCountryCode+ tecPhoneNumber.text);
        },
        child: Text(
          "Send OTP"
        ));
  }
}

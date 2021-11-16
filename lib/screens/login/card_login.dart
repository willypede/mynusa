import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mynusa/screens/login/button_send_otp.dart';
import 'package:mynusa/screens/login/country_picker.dart';
import 'package:mynusa/screens/login/phone_number.dart';

class LoginCard extends StatefulWidget {
  static const double _hPad = 16.0;

  @override
  State<LoginCard> createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  String tPhoneCode = "+62";
  final tecCountry = TextEditingController();
  final tecPhoneNumber = TextEditingController();
  void updateCountryCode(String phoneCode){
    setState(() {
      tPhoneCode = "+" + phoneCode;
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tecCountry.text = "Indonesia";
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(LoginCard._hPad),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CountryPicker(tecCountry, updateCountryCode),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    tPhoneCode,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                ),
                const SizedBox(width: 16,),
                PhoneNumber(tecPhoneNumber),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            SendOtpButton(tPhoneCode, tecPhoneNumber)
          ],
        ),
      )
    );
  }
}

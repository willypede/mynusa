import 'package:flutter/material.dart';
import 'package:mynusa/pages/login/card_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                    "MyNusa",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32
                  ),
                ),
                const SizedBox(height: 16),
                LoginCard()
              ],
            ),
          )
        ),
      )
    );
  }
}

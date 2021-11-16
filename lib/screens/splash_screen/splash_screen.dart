import 'package:flutter/material.dart';
import 'package:mynusa/screens/splash_screen/image_mynusa.dart';
import 'package:mynusa/screens/splash_screen/loading_splash_screen.dart';
import 'package:mynusa/services/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 2), (){
      Navigator.pushReplacementNamed(context, "/login");
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Color(int.parse(secondaryColor)),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MynusaImage(),
              const SizedBox(height: 16,),
              SplashScreenLoading()
            ],
          )
        )
    );
  }
}

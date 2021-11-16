import 'package:flutter/material.dart';
import 'package:mynusa/screens/login/login.dart';
import 'package:mynusa/screens/splash_screen/splash_screen.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/styles.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
    await themeChangeProvider.darkThemePreference.getTheme();
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentAppTheme();
  }
  @override
  Widget build(BuildContext context) {
    return
      ChangeNotifierProvider(
        create: (_) {
          return themeChangeProvider;
        },
        child: Consumer<DarkThemeProvider>(
          builder: (context, value, child) {

            return MaterialApp(
              initialRoute: "/",
              theme: Styles.themeData(themeChangeProvider.darkTheme, context),
              routes: {
                "/": (context) => const SplashScreen(),
                "/login": (context) => const Login(),
              },
            );
          },
        ),);
  }
}
import 'package:flutter/material.dart';
import 'package:mynusa/screens/attention/attention.dart';
import 'package:mynusa/screens/home/home.dart';
import 'package:mynusa/screens/login/login.dart';
import 'package:mynusa/screens/main_menu/main_menu.dart';
import 'package:mynusa/screens/setting/setting.dart';
import 'package:mynusa/screens/splash_screen/splash_screen.dart';
import 'package:mynusa/services/dark_theme_provider.dart';
import 'package:mynusa/services/language_provider.dart';
import 'package:mynusa/services/styles.dart';
import 'package:provider/provider.dart';
import 'package:klocalizations_flutter/klocalizations_flutter.dart';

import 'generated/l10n.dart';

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

            return ChangeNotifierProvider<LanguageProvider>(
              create: (builder) => LanguageProvider(),
              child: Builder(
                builder: (context) =>
                    MaterialApp(
                      locale: Provider.of<LanguageProvider>(context, listen: true).currentLocale,
                      localizationsDelegates: [
                        S.delegate,
                        GlobalMaterialLocalizations.delegate,
                        GlobalWidgetsLocalizations.delegate,
                        GlobalCupertinoLocalizations.delegate,
                      ],
                      supportedLocales: [
                        Locale('en', ''),
                        Locale('id', ''),
                      ],
                      initialRoute: "/",
                      theme: Styles.themeData(themeChangeProvider.darkTheme, context),
                      routes: {
                        "/": (context) => const SplashScreen(),
                        "/login": (context) => const Login(),

                        "/mainMenu": (context) => MainMenu(),
                        "/home": (context) => const Home(),
                        "/attention": (context) => const Attention(),

                        "/setting": (context) => const Setting(),
                      },
                    ),
              ),
            );
          },
        ),);
  }
}
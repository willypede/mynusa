import 'package:flutter/material.dart';
import 'package:mynusa/pages/attention/page_attention.dart';
import 'package:mynusa/pages/cctv/cctv.dart';
import 'package:mynusa/pages/home/page_home.dart';
import 'package:mynusa/pages/invoice_history/page_invoice_history.dart';
import 'package:mynusa/pages/login/page_login.dart';
import 'package:mynusa/pages/main_menu/main_menu.dart';
import 'package:mynusa/pages/noc_notifications/page_noc_notifications.dart';
import 'package:mynusa/pages/notifikasi/page_notifikasi.dart';
import 'package:mynusa/pages/profile/page_profile.dart';
import 'package:mynusa/pages/saran/page_saran.dart';
import 'package:mynusa/pages/setting/page_setting.dart';
import 'package:mynusa/pages/splash_screen/splash_screen.dart';
import 'package:mynusa/pages/subscription/page_subscription.dart';
import 'package:mynusa/pages/invoice/page_invoice.dart';
import 'package:mynusa/pages/trouble_tickets/page_trouble_tickets.dart';
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
                        "/login": (context) => const LoginPage(),

                        "/mainMenu": (context) => MainMenu(),
                        "/home": (context) => const HomePage(),
                        "/nocNotifications": (context) => const NocNotificationsPage(),
                        "/attention": (context) => const AttentionPage(),

                        "/setting": (context) => const SettingPage(),
                        "/profile": (context) => const ProfilePage(),
                        "/notification": (context) => const NotifikasiPage(),
                        "/feedback": (context) => const SaranPage(),

                        "/unpaidInvoices": (context) => InvoicePage(),
                        "/invoiceHistory": (context) => InvoiceHistoryPage(),

                        "/troubleTickets": (context) => TroubleTicketsPage(),
                        "/subscription": (context) => SubscriptionPage(),
                        "/cctv": (context) => CctvPage(),
                      },
                    ),
              ),
            );
          },
        ),);
  }
}
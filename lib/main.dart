// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:portafolio/assets/l10n/l10n.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';
import 'package:portafolio/pages/desktop_web.dart';
import 'package:portafolio/pages/mobile_web.dart';
import 'package:portafolio/pages/tablet_web.dart';
import 'package:portafolio/assets/utils/responsive/responsive_layout.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return ThemeProvider();
      },
      builder: (context, child) {
        final provider = Provider.of<ThemeProvider>(context);
        return MaterialApp(
          title: 'Portfolio Wendy',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: true,
            fontFamily: 'Inter',
          ),
          locale: provider.locale,
          supportedLocales: L10n.all,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          // themeMode: provider.themeMode,
          // theme: MyThemes.lightTheme,
          // darkTheme: MyThemes.darkTheme,
          home: const ResponsiveLayout(
            desktopScaffold: DesktopWeb(),
            tabletScaffold: TabletWeb(),
            mobileScaffold: MobileWeb(),
          ),
        );
      },
    );
  }
}

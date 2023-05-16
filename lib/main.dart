import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'data/database_helper.dart';

import '../provider/choose_location_provider.dart';
import '../provider/choose_lang_provider.dart';
import '../provider/change_lang_provider.dart';
import '../screens/slava_ukraine_screen.dart';
import '../screens/home_screen.dart';
import '../screens/choose_screen.dart';
import '../screens/load_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ChooseLocation()),
      ChangeNotifierProvider(create: (_) => ChooseLanguage()),
      ChangeNotifierProvider(create: (_) => ChangeLanguage()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Provider.of<ChooseLanguage>(context, listen: true).currentLocale,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        for (var locale in supportedLocales) {
          if (locale.languageCode == deviceLocale!.languageCode &&
              locale.countryCode == deviceLocale.countryCode) {
            return deviceLocale;
          }
        }
        return supportedLocales.first;
      },
      supportedLocales: const [
        Locale('en'),
        Locale('uk'),
      ],
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black),
      ),
      home: const LoadScreen(),
    );
  }
}

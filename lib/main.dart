import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/provider/choose_location_provider.dart';
import 'package:provider/provider.dart';

import '../screens/slava_ukraine_screen.dart';
import '../screens/home_screen.dart';
import '../screens/choose_screen.dart';

void main() {
  runApp(MultiProvider(
    providers: [ChangeNotifierProvider(create: (_) => ChooseLocation())],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(primary: Colors.black),
      ),
      home: const ChooseScreen(),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/app_colors.dart';
import '../screens/home_screen.dart';

class MapGusScreen extends StatelessWidget {
  const MapGusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            alignment: Alignment.topCenter,
            margin: const EdgeInsets.only(top: 30),
            child: Text(
              AppLocalizations.of(context)!.title4,
              style: const TextStyle(
                  color: AppColors.mainTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.only(top: 30, left: 30, right: 30),
            padding:
                const EdgeInsets.only(left: 10, right: 10, bottom: 10, top: 10),
            height: 60,
            width: 330,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.backColor1),
            child: const Text('map lists'),
          ),
        ],
      )),
    );
  }
}

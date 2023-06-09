import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/app_colors.dart';
import '../screens/home_screen.dart';
import '../screens/map_gus_screen.dart';
import '../widget/gus_button_widget.dart';

class SlavaUkraineScreen extends StatelessWidget {
  final String actionId;
  const SlavaUkraineScreen({super.key, required this.actionId});

  void goToMap(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const MapGusScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.backColor1,
          ),
          margin:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, right: 5),
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomeScreen()),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: Text(
                  AppLocalizations.of(context)!.title3,
                  style: const TextStyle(
                      color: AppColors.mainTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context)!.text3,
                  style: const TextStyle(
                      color: AppColors.mainTextColor, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset('assets/images/${actionId}_gus.svg'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50, left: 35, right: 35),
                alignment: Alignment.center,
                child: Text(
                  AppLocalizations.of(context)!.text4,
                  style: const TextStyle(
                      color: AppColors.mainTextColor, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: GusButton(
                  buttonTextGus: AppLocalizations.of(context)!.button4,
                  onTap: () => goToMap(context),
                ),
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/app_colors.dart';
import '../screens/choose_screen.dart';
import '../widget/gus_button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void goToChoose(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ChooseScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          Container(
            margin:
                const EdgeInsets.only(top: 70, right: 30, left: 30, bottom: 30),
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.text1,
              style: const TextStyle(
                color: AppColors.mainTextColor,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            alignment: Alignment.center,
            height: 350,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.shapeColor1),
            child: Container(
              alignment: Alignment.center,
              height: 250,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.shapeColor2),
              child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.shapeColor3,
                  ),
                  child: Transform.scale(
                    scale: 2,
                    child: SvgPicture.asset(
                      AppLocalizations.of(context)!.picture2,
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 55),
          // GusButton(
          //   buttonTextGus: AppLocalizations.of(context)!.button2,
          //   onTap: () => goToChoose(context),
          // ),
          // const SizedBox(height: 30),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 30, right: 30),
        child: GusButton(
          buttonTextGus: AppLocalizations.of(context)!.button2,
          onTap: () => goToChoose(context),
        ),
      ),
    );
  }
}

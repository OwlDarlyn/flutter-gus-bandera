import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/screens/choose_screen.dart';
import 'package:flutter_gus_bandera/widget/gus_button_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';

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
                const EdgeInsets.only(top: 50, right: 30, left: 30, bottom: 30),
            alignment: Alignment.center,
            child: const Text(
              'A combat goose from Ukraine\'s biolabs is ready to launch a "super-tratatata" attack on enemy targets',
              style: TextStyle(
                color: AppColors.mainTextColor,
                fontSize: 18,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 50),
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
                      'assets/images/gus_active_eng.svg',
                    ),
                  )),
            ),
          ),
          const SizedBox(height: 55),
          GusButton(
            buttonTextGus: 'Pick a position',
            onTap: () => goToChoose(context),
          ),
          const SizedBox(height: 30),
        ]),
      ),
    );
  }
}

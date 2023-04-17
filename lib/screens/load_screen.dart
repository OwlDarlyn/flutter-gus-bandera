import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';
import '../widget/gus_button_widget.dart';

class LoadScreen extends StatelessWidget {
  const LoadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
                      'assets/images/gus_kus_eng.svg',
                    ),
                  )),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 20, right: 30, left: 30, bottom: 10),
            alignment: Alignment.center,
            child: const Text(
              'Select your language',
              style: TextStyle(
                color: AppColors.mainTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(
                  top: 10, left: 30, right: 30, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.backColor1,
              ),
              child: TextButton(
                onPressed: () {},
                child: Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset(
                    'assets/images/ua_flag_1.svg',
                  ),
                ),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              padding: const EdgeInsets.all(5),
              margin: const EdgeInsets.only(
                  top: 10, left: 20, right: 20, bottom: 10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: AppColors.backColor1,
              ),
              child: TextButton(
                onPressed: () {},
                child: Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset(
                    'assets/images/gb_flag_1.svg',
                  ),
                ),
              ),
            ),
          ]),
          GusButton(
            buttonTextGus: 'Select a language',
            onTap: () {},
          ),
          const SizedBox(height: 30),
        ],
      )),
    );
  }
}

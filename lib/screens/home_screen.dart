import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70, right: 30, left: 30),
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
                margin: const EdgeInsets.only(bottom: 50),
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
                          'assets/images/gus1.svg',
                        ),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 30),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                      fixedSize: MaterialStateProperty.all(const Size(300, 50)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.mainButtonColor),
                      foregroundColor: MaterialStateProperty.all(
                          AppColors.mainButtonTextColor)),
                  child: const Text(
                    'Pick a position',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              )
            ]),
      ),
    );
  }
}

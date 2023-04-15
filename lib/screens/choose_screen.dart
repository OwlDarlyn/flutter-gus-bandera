import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          width: 350,
          height: 700,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: AppColors.backColor1,
          ),
          margin:
              const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 5, right: 5),
                alignment: Alignment.centerRight,
                child: IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  'Choose one of four positions',
                  style: TextStyle(
                      color: AppColors.mainTextColor,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20, left: 35, right: 35),
                alignment: Alignment.center,
                child: const Text(
                  'The goose attacks the selected position with precision weapons',
                  style:
                      TextStyle(color: AppColors.mainTextColor, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 40, left: 15, right: 15),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 15, top: 15),
                      height: 205,
                      width: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                          color: AppColors.backColor2,
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 1,
                            child:
                                SvgPicture.asset('assets/images/mackwa1.svg'),
                          ),
                          const Text(
                            textAlign: TextAlign.center,
                            'To the Matzkva',
                            style: TextStyle(
                              color: AppColors.mainTextColor,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 200, bottom: 10),
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          fixedSize:
                              MaterialStateProperty.all(const Size(300, 50)),
                          backgroundColor: MaterialStateProperty.all(
                              AppColors.mainButtonColor),
                          foregroundColor: MaterialStateProperty.all(
                              AppColors.mainButtonTextColor)),
                      child: const Text(
                        'Launch the goose',
                        style: TextStyle(fontSize: 20),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}

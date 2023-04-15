import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/screens/home_screen.dart';
import 'package:flutter_gus_bandera/screens/slava_ukraine_screen.dart';

import '../models/app_colors.dart';
import '../widget/position_widget.dart';
import '../widget/gus_button_widget.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  void goToSlava(BuildContext context) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const SlavaUkraineScreen()));
  }

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
                margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PositionTo(id: 'mackwa', location: 'To the Matzkva'),
                        PositionTo(id: 'chrik', location: 'To the chik-chrik'),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        PositionTo(id: 'bunker', location: 'To the bunker'),
                        PositionTo(id: 'rubl', location: 'To the ruble rate'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              GusButton(
                buttonTextGus: 'Launch the goose',
                onTap: () => goToSlava(context),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

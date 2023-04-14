import 'package:flutter/material.dart';

import '../models/app_colors.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
          child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColors.backColor1,
        ),
        margin: const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
        child: Column(
          children: [
            Container(
              child: Text(
                'Choose one of four positions',
                style: TextStyle(color: AppColors.mainTextColor, fontSize: 20),
              ),
            ),
            Container(),
          ],
        ),
      )),
    );
  }
}

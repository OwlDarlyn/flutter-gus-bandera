import 'package:flutter/material.dart';

import '../models/app_colors.dart';

class GusButton extends StatelessWidget {
  final String buttonTextGus;
  final Function onTap;
  GusButton({super.key, required this.buttonTextGus, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: TextButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
            fixedSize: MaterialStateProperty.all(const Size(300, 50)),
            backgroundColor:
                MaterialStateProperty.all(AppColors.mainButtonColor),
            foregroundColor:
                MaterialStateProperty.all(AppColors.mainButtonTextColor)),
        child: Text(
          buttonTextGus,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

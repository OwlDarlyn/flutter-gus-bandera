import 'package:flutter/material.dart';

import '../models/app_colors.dart';

class GusButton extends StatelessWidget {
  final String buttonTextGus;
  final Function onTap;
  final bool? enabled;
  const GusButton(
      {super.key,
      required this.buttonTextGus,
      required this.onTap,
      this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30, bottom: 10),
      child: TextButton(
        onPressed: () => onTap(),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16))),
            fixedSize: MaterialStateProperty.all(const Size(310, 50)),
            backgroundColor: MaterialStateProperty.all(enabled!
                ? AppColors.enabledButtonColor
                : AppColors.disabledButtonColor),
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

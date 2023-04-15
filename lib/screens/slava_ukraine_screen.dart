import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';

class SlavaUkraine extends StatelessWidget {
  const SlavaUkraine({super.key});

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
                  onPressed: () {},
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 5),
                child: const Text(
                  'Slava Ukraine!',
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
                  'Your goose has been successfully launched',
                  style:
                      TextStyle(color: AppColors.mainTextColor, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50),
                child: Transform.scale(
                  scale: 1,
                  child: SvgPicture.asset('assets/images/mackwa_gus.svg'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

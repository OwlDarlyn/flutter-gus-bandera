import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/app_colors.dart';

class PositionTo extends StatelessWidget {
  final String pathToIcon;
  final String location;
  const PositionTo(
      {super.key, required this.pathToIcon, required this.location});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, top: 15),
      height: 205,
      width: 150,
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
          color: AppColors.backColor2, borderRadius: BorderRadius.circular(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Transform.scale(
            scale: 1,
            child: SvgPicture.asset(pathToIcon),
          ),
          Text(
            textAlign: TextAlign.center,
            location,
            style: const TextStyle(
              color: AppColors.mainTextColor,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

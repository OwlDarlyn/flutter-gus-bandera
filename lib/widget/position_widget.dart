import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/app_colors.dart';
import '../provider/choose_location_provider.dart';

class PositionTo extends StatelessWidget {
  final String location;
  final String id;
  const PositionTo({super.key, required this.location, required this.id});

  @override
  Widget build(BuildContext context) {
    final String choosen =
        Provider.of<ChooseLocation>(context, listen: true).choosenId;
    final String path = choosen == id && choosen != ''
        ? 'assets/images/${id}_visible.svg'
        : 'assets/images/${id}_invisible.svg';
    return GestureDetector(
      onTap: () => Provider.of<ChooseLocation>(context, listen: false)
          .changeSelected(id),
      child: Container(
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
              child: SvgPicture.asset(path),
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
      ),
    );
  }
}

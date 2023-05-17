import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/models/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../models/goose_map.dart';

class GusListItem extends StatelessWidget {
  final GusMap gusMap;
  const GusListItem({super.key, required this.gusMap});

  @override
  Widget build(BuildContext context) {
    final Map titleList = {
      'mackwa': AppLocalizations.of(context)!.mackwa,
      'chrik': AppLocalizations.of(context)!.chrik,
      'bunker': AppLocalizations.of(context)!.bunker,
      'rubl': AppLocalizations.of(context)!.rubl
    };
    final Map monthsList = {
      1: AppLocalizations.of(context)!.january,
      2: AppLocalizations.of(context)!.february,
      3: AppLocalizations.of(context)!.march,
      4: AppLocalizations.of(context)!.april,
      5: AppLocalizations.of(context)!.may,
      6: AppLocalizations.of(context)!.june,
      7: AppLocalizations.of(context)!.july,
      8: AppLocalizations.of(context)!.august,
      9: AppLocalizations.of(context)!.september,
      10: AppLocalizations.of(context)!.october,
      11: AppLocalizations.of(context)!.november,
      12: AppLocalizations.of(context)!.december
    };
    final DateTime parsedDate = DateTime.parse(gusMap.date);
    final String dateTimeString =
        '${parsedDate.hour}:${parsedDate.minute} ${parsedDate.day} ${monthsList[parsedDate.month]} ${parsedDate.year}';
    return Container(
      // height: 60,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: AppColors.backColor1,
      ),
      margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
      padding: const EdgeInsets.only(right: 20, left: 20, top: 10, bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                dateTimeString,
                style: const TextStyle(fontSize: 11),
              ),
              const SizedBox(height: 5),
              Text(
                titleList[gusMap.itemId],
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
          Container(
            child: SvgPicture.asset('assets/images/${gusMap.itemId}_small.svg'),
          ),
        ],
      ),
    );
  }
}

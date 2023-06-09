import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/main.dart';
import 'package:flutter_gus_bandera/provider/change_lang_provider.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/app_colors.dart';
import '../provider/choose_lang_provider.dart';

class LangTo extends StatelessWidget {
  final String id;
  const LangTo({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    final String choosen =
        Provider.of<ChooseLanguage>(context, listen: true).choosenIdLang;
    final String path = 'assets/images/${id}_flag_1.svg';
    return GestureDetector(
      onTap: () {
        Provider.of<ChooseLanguage>(context, listen: false).changeSelected(id);
      },
      child: Container(
        height: 100,
        width: 100,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: choosen == id ? AppColors.backColor1 : AppColors.shapeColor1,
        ),
        child: Transform.scale(
          scale: 1,
          child: SvgPicture.asset(path),
        ),
      ),
    );
  }
}

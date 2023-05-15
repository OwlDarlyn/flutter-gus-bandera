import 'package:flutter/material.dart';
import 'package:flutter_gus_bandera/widget/lang_widget.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../models/app_colors.dart';
import '../provider/choose_lang_provider.dart';
import '../screens/home_screen.dart';
import '../widget/gus_button_widget.dart';

class LoadScreen extends StatelessWidget {
  final void onLocaleChange;
  const LoadScreen({super.key, this.onLocaleChange});

  void goToHome(BuildContext context, String id) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final String langdId =
        Provider.of<ChooseLanguage>(context, listen: true).choosenIdLang;
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50),
            alignment: Alignment.center,
            height: 350,
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.shapeColor1),
            child: Container(
              alignment: Alignment.center,
              height: 250,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: AppColors.shapeColor2),
              child: Container(
                  alignment: Alignment.center,
                  height: 150,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.shapeColor3,
                  ),
                  child: Transform.scale(
                    scale: 2,
                    child: SvgPicture.asset(
                      AppLocalizations.of(context)!.picture1,
                    ),
                  )),
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(top: 20, right: 30, left: 30, bottom: 10),
            alignment: Alignment.center,
            child: Text(
              AppLocalizations.of(context)!.title1,
              style: const TextStyle(
                color: AppColors.mainTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 40, right: 40),
            decoration: BoxDecoration(
                color: AppColors.shapeColor1,
                borderRadius: BorderRadius.circular(16)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  LangTo(id: 'en'),
                  LangTo(id: 'uk'),
                ]),
          ),
          GusButton(
            buttonTextGus: AppLocalizations.of(context)!.button1,
            onTap: () => langdId != '' ? goToHome(context, langdId) : null,
            enabled: langdId != '',
          ),
          const SizedBox(height: 30),
        ],
      )),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_gus_bandera/data/database_helper.dart';
import 'package:flutter_gus_bandera/models/goose_map.dart';
import 'package:flutter_gus_bandera/screens/choose_screen.dart';
import 'package:flutter_gus_bandera/widget/gus_button_widget.dart';
import 'package:flutter_gus_bandera/widget/gus_list_item.dart';

import '../models/app_colors.dart';
import '../screens/home_screen.dart';

class MapGusScreen extends StatelessWidget {
  const MapGusScreen({super.key});

  void goToChoose(BuildContext context) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ChooseScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.defaultBackColor,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                AppLocalizations.of(context)!.title4,
                style: const TextStyle(
                    color: AppColors.mainTextColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: FutureBuilder<List<GusMap>>(
                  future: DatabaseHelper.instance.getGusMap(),
                  builder: (BuildContext context,
                      AsyncSnapshot<List<GusMap>> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(child: Text('Loading...'));
                    }
                    return ListView.builder(
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        return GusListItem(
                          gusMap: snapshot.data![index],
                        );
                      },
                    );
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 80, left: 40, right: 40),
        child: GusButton(
          buttonTextGus: AppLocalizations.of(context)!.button5,
          onTap: () => goToChoose(context),
        ),
      ),
    );
  }
}

import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../models/app_colors.dart';
import '../provider/choose_location_provider.dart';
import '../screens/home_screen.dart';
import '../screens/slava_ukraine_screen.dart';
import '../widget/position_widget.dart';
import '../widget/gus_button_widget.dart';

class ChooseScreen extends StatefulWidget {
  const ChooseScreen({super.key});

  @override
  State<ChooseScreen> createState() => _ChooseScreenState();
}

class _ChooseScreenState extends State<ChooseScreen> {
  void launchGoose() {
    setState(() {
      selectedGus = true;
    });
  }

  void goToSlava(BuildContext context, String id) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => SlavaUkraineScreen(actionId: id)));
  }

  bool selectedGus = false;

  @override
  Widget build(BuildContext context) {
    final String selectedId =
        Provider.of<ChooseLocation>(context, listen: true).choosenId;
    return Stack(children: [
      Scaffold(
        backgroundColor: AppColors.defaultBackColor,
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: AppColors.backColor1,
            ),
            margin:
                const EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 5, right: 5),
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: const Icon(
                      Icons.close,
                      size: 30,
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text(
                    'Choose one of four positions',
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
                    'The goose attacks the selected position with precision weapons',
                    style:
                        TextStyle(color: AppColors.mainTextColor, fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30, left: 20, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          PositionTo(id: 'mackwa', location: 'To the Matzkva'),
                          PositionTo(
                              id: 'chrik', location: 'To the chik-chrik'),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          PositionTo(id: 'bunker', location: 'To the bunker'),
                          PositionTo(id: 'rubl', location: 'To the ruble rate'),
                        ],
                      ),
                    ],
                  ),
                ),
                GusButton(
                  buttonTextGus: 'Launch the goose',
                  onTap: () => selectedId != '' ? launchGoose() : null,
                  enabled: selectedId != '',
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
      AnimatedPositioned(
        bottom: selectedGus ? 1200 : -550,
        left: 15,
        duration: const Duration(milliseconds: 1200),
        onEnd: () => goToSlava(context, selectedId),
        child: Transform.scale(
            scale: 1, child: SvgPicture.asset('assets/images/gus_fly.svg')),
      )
    ]);
  }
}

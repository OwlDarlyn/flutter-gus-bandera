import 'package:flutter/material.dart';

class ChooseLocation extends ChangeNotifier {
  String _choosenId = '';

  String get choosenId => _choosenId;

  void changeSelected(String id) {
    _choosenId = id;
    notifyListeners();
  }
}

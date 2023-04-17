import 'package:flutter/material.dart';

class ChooseLanguage extends ChangeNotifier {
  String _choosenIdLang = '';

  String get choosenIdLang => _choosenIdLang;

  void changeSelected(String id) {
    _choosenIdLang = id;
    notifyListeners();
  }
}

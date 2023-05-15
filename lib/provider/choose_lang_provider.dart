import 'dart:developer';

import 'package:flutter/material.dart';

class ChooseLanguage extends ChangeNotifier {
  String _choosenIdLang = '';
  Locale _currentLocale = const Locale('en');

  String get choosenIdLang => _choosenIdLang;
  Locale get currentLocale => _currentLocale;

  void changeSelected(String id) {
    log(id);
    _choosenIdLang = id;
    _currentLocale = Locale(_choosenIdLang);
    notifyListeners();
  }
}

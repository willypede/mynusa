import 'package:flutter/cupertino.dart';

class LanguageProvider with ChangeNotifier{
  Locale _currentLocale = Locale("id");

  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale){
    this._currentLocale = Locale(_locale);
    notifyListeners();
  }

}
import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _SelectedMenuOpt = 0;

  int get selectedMenuOpt {
    return this._SelectedMenuOpt;
  }

  set selectedMenuOpt(int i) {
    this._SelectedMenuOpt = i;
    notifyListeners();
  }
}

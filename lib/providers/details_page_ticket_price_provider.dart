import 'package:flutter/material.dart';

class BottomTicketPriceProvider extends ChangeNotifier {
  bool _isDark = true;

  changeMode(double position) {
    if (position >= 137.0) {
      _isDark = false;
      notifyListeners();
    } else {
      _isDark = true;
      notifyListeners();
    }
  }

  bool get isDark => _isDark;
}

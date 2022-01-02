import 'package:flutter/material.dart';

class SearchProvider extends ChangeNotifier {
  bool _isBottomSheetVisible = false;

  void changeVisibility() {
    _isBottomSheetVisible = !_isBottomSheetVisible;
    notifyListeners();
  }
  bool get isBottomSheetVisible => _isBottomSheetVisible;
}
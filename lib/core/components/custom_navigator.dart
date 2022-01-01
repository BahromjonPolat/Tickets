import 'package:flutter/material.dart';

class CustomNavigator {
  static late BuildContext _context;

  void init(BuildContext context) {
    _context = context;
  }

  static pushReplacement(Widget page) {
    Navigator.pushReplacement(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}

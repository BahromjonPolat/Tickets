import 'package:flutter/material.dart';

class CustomNavigator {
  static late BuildContext _context;

  static void init(BuildContext context) {
    _context = context;
  }

  static push(Widget page) {
    Navigator.push(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  static pushReplacement(Widget page) {
    Navigator.pushReplacement(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }


}

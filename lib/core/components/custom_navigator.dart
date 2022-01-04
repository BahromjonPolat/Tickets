import 'package:flutter/material.dart';

class CustomNavigator {
  static late BuildContext _context;

  void init(BuildContext context) {
    _context = context;
  }

  void push(Widget page) {
    Navigator.push(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  void pushReplacement(Widget page) {
    Navigator.pushReplacement(
      _context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}

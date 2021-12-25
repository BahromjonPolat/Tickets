import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MainTheme {
  static ThemeData light = ThemeData(
    fontFamily: 'WorkSans',
    canvasColor: ConstColors.background,
    primaryColor: ConstColors.primaryOrange,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0.0,
        primary: ConstColors.red,
      ),
    ),
  );
}

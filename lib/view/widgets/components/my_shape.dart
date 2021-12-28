import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyShape {
  static setCircularBorder({double radius = 12.0}) => RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(radius),
        ),
      );
}

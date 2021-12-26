import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyEdgeInsets {
  static symmetric({
    double vertical = 0,
    double horizontal = 0,
  }) =>
      EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(horizontal),
        vertical: getProportionateScreenHeight(vertical),
      );
}

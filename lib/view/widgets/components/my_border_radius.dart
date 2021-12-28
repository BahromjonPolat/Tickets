import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyBorderRadius {
  static circular({double radius = 0.0}) => BorderRadius.circular(
        getProportionateScreenWidth(radius),
      );

  static only({
    double topLeft = 0.0,
    double topRight = 0.0,
    double bottomLeft = 0.0,
    double bottomRight = 0.0,
  }) =>
      BorderRadius.only(
        topLeft: Radius.circular(getProportionateScreenWidth(topLeft)),
        topRight: Radius.circular(getProportionateScreenWidth(topRight)),
        bottomLeft: Radius.circular(getProportionateScreenWidth(bottomLeft)),
        bottomRight: Radius.circular(getProportionateScreenWidth(bottomRight)),
      );
}

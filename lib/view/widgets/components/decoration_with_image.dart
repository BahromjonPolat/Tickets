import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyDecoration {
  static Decoration setDecorationWithImage({
    required String imageUrl,
    BoxFit boxFit = BoxFit.cover,
    double radius = 0.0,
    Color color = Colors.transparent,
  }) =>
      BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          getProportionateScreenWidth(radius),
        ),
        image: DecorationImage(
          fit: boxFit,
          image: NetworkImage(imageUrl),
        ),
      );
}

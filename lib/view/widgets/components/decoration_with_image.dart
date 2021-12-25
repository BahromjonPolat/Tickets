import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyDecoration {
  static Decoration setDecorationWithImage({
    required String imageUrl,
    double radius = 0.0,
    Color color = Colors.transparent,
  }) =>
      BoxDecoration(
        borderRadius:
            BorderRadius.circular(getProportionateScreenWidth(radius)),
        color: color,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(imageUrl),
        ),
      );
}

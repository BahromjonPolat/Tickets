import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyDecoration {
  static Decoration withImage({
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

  static Decoration withAssetImage({
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
          image: AssetImage(imageUrl),
        ),
      );
}

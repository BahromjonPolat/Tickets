import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MySizedBox extends StatelessWidget {
  double height;
  double width;

  MySizedBox({
    Key? key,
    this.width = 0.0,
    this.height = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(height),
      width: getProportionateScreenWidth(width),
    );
  }
}

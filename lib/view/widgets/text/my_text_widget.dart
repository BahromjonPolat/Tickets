import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyText extends StatelessWidget {
  String data;
  double size;
  Color color;
  FontWeight weight;
  TextAlign align;

  MyText(
    this.data, {
    Key? key,
    this.color = ConstColors.black,
    this.weight = FontWeight.w500,
    this.size = 14.0,
    this.align = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(size),
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

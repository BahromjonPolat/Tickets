import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyText extends StatelessWidget {
  String data;
  double size;
  Color color;
  FontWeight weight;

  MyText(
    this.data, {
    Key? key,
    this.color = ConstColors.black,
    this.weight = FontWeight.w500,
    this.size = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(size),
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MtText extends StatelessWidget {
  String data;
  double size = 14.0;
  Color color = ConstColors.black;
  FontWeight weight = FontWeight.w500;

  MtText(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(14.0),
        fontWeight: weight,
        color: color,
      ),
    );
  }
}

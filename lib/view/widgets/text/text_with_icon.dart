import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TextWithIcon extends StatelessWidget {
  String assetIcon;
  String text;
  Color color;
  FontWeight weight;
  double width;
  double textSize;

  TextWithIcon(
    this.assetIcon,
    this.text, {
    Key? key,
    this.color = ConstColors.white,
    this.weight = FontWeight.w600,
    this.width = 4.3,
    this.textSize = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(assetIcon, color: color),
        SizedBox(width: getProportionateScreenWidth(width)),
        MyText(
          text,
          color: color,
          size: textSize,
          weight: weight,
        ),
        SizedBox(width: getProportionateScreenWidth(6.77)),
      ],
    );
  }
}

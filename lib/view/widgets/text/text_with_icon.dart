import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TextWithIcon extends StatelessWidget {
  String assetIcon;
  String text;
  Color color;

  TextWithIcon(
    this.assetIcon,
    this.text, {
    Key? key,
    this.color = ConstColors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(assetIcon, color: color.withOpacity(0.6)),
        SizedBox(width: getProportionateScreenWidth(4.3)),
        MyText(
          text,
          color: color.withOpacity(0.6),
          size: 12.0,
          weight: FontWeight.w600,
        ),
        SizedBox(width: getProportionateScreenWidth(6.77)),
      ],
    );
  }
}

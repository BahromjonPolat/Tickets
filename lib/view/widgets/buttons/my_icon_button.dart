import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyIconButton extends StatelessWidget {
  VoidCallback onPressed;
  String assetIcon;
  Color color;
  Color backgroundColor;
  double radius;
  double iconSize;

  MyIconButton({
    required this.onPressed,
    required this.assetIcon,
    this.color = ConstColors.red,
    this.backgroundColor = ConstColors.white,
    this.radius = 16.0,
    this.iconSize = 24.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: getProportionateScreenWidth(radius),
      backgroundColor: backgroundColor,
      child: SvgPicture.asset(
        assetIcon,
        color: color,
        height: getProportionateScreenHeight(iconSize),
        width: getProportionateScreenWidth(iconSize),
      ),
    );
  }
}

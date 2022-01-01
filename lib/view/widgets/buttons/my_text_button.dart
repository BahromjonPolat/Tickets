import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyTextButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  double padding;

  MyTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.padding = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: MyText(
        label,
        color: ConstColors.red,
        size: 15.0,
        weight: FontWeight.w600,
      ),
      style: TextButton.styleFrom(
        primary: ConstColors.red,
        padding: MyEdgeInsets.symmetric(horizontal: padding),
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

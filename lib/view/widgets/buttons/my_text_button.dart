import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MyTextButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;

  MyTextButton({
    Key? key,
    required this.onPressed,
    required this.label,
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
        padding: EdgeInsets.zero,
        alignment: Alignment.centerLeft,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class WhiteButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;

  WhiteButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: MyText(
        label,
        color: ConstColors.red,
        size: 15.0,
        weight: FontWeight.w600,
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: ConstColors.white,
          shape: MyShape.setCircularBorder(),
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            getProportionateScreenHeight(40.0),
          )),
    );
  }
}

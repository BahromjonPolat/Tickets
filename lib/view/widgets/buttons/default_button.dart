import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DefaultButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;

  DefaultButton({
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
        color: ConstColors.white,
        size: 15.0,
        weight: FontWeight.w600,
      ),
      style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: ConstColors.red,
          shape: MyShape.setCircularBorder(radius: 8.0),
          fixedSize: Size(
            MediaQuery.of(context).size.width,
            getProportionateScreenHeight(40.0),
          )),
    );
  }
}

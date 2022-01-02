import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;
  Color color;
  SearchPageButton({
    Key? key,
    required this.onPressed,
    required this.label,
    this.color = ConstColors.grey,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(32.0),
      margin: MyEdgeInsets.symmetric(horizontal: 4.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: MyText(
          label,
          color: color,
          size: 14.0,
          weight: FontWeight.w600,
        ),
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: ConstColors.white,
          shape: MyShape.setCircularBorder(radius: 16.0),
          padding: MyEdgeInsets.symmetric(vertical: 8.0, horizontal: 22.0)
        ),
      ),
    );
  }
}

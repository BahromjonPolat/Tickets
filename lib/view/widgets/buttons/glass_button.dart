import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class GlassButton extends StatelessWidget {
  VoidCallback onPressed;
  String label;

  GlassButton({
    Key? key,
    required this.onPressed,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(horizontal: 8.0),
      child: ElevatedButton(
        onPressed: () {},
        child: MyText(label, color: ConstColors.white, weight: FontWeight.w600),
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          padding: MyEdgeInsets.symmetric(horizontal: 14.0, vertical: 8.0),
          primary: ConstColors.white.withOpacity(0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              getProportionateScreenWidth(16.0),
            ),
          ),
        ),
      ),
    );
  }
}

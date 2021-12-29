import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DiscoverCard extends StatelessWidget {
  String assetIcon;
  String label;
  Color color;

  DiscoverCard(this.assetIcon, this.label, this.color, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56.0),
      width: getProportionateScreenWidth(145.0),
      child: Card(
        elevation: 0.5,
        // shadowColor: color,
        color: ConstColors.white,
        shape:MyShape.setCircularBorder(radius: 100.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                  radius: getProportionateScreenWidth(20.0),
                  backgroundColor: color.withOpacity(0.35),
                  child: SvgPicture.asset(assetIcon, color: color)),
            ),
            MyText(label, color: color, size: 12.0, weight: FontWeight.w600),
          ],
        ),
      ),
    );
  }
}

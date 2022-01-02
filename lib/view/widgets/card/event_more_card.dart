import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventMoreCard extends StatelessWidget {
  String image;

  EventMoreCard({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40.0),
      width: getProportionateScreenWidth(287.0),
      padding: MyEdgeInsets.symmetric(horizontal: 18.0),
      decoration: MyDecoration.withImage(
        imageUrl: image,
        radius: 12.0,
        color: ConstColors.greyer,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            '3 EVENTS MORE',
            color: ConstColors.white,
            size: 12.0,
            weight: FontWeight.w800,
          ),
          SvgPicture.asset(AssetIcons.chevronRight, color: ConstColors.white),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class MapCard extends StatelessWidget {
  const MapCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(122.0),
      width: getProportionateScreenWidth(343.0),
      padding: MyEdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
      margin: MyEdgeInsets.symmetric(vertical: 16.0),
      alignment: Alignment.topRight,
      decoration: MyDecoration.withImage(imageUrl: Links.map, radius: 16.0),
      child: MyIconButton(
        onPressed: () {},
        assetIcon: AssetIcons.locationMisc,
        iconSize: 9.0,
        radius: 12.5,
      ),
    );
  }
}

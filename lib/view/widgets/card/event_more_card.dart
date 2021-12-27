import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventMoreCard extends StatelessWidget {
  const EventMoreCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(40.0),
      width: getProportionateScreenWidth(287.0),
      decoration: MyDecoration.setDecorationWithImage(
        imageUrl: Links.random + '0',
        radius: 12.0,
        color: ConstColors.greyer
      ),
    );
  }
}

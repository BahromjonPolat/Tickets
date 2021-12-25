import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class RecommendedLargeCard extends StatelessWidget {
  const RecommendedLargeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: getProportionateScreenHeight(256.0),
          width: getProportionateScreenWidth(327.0),
          decoration: BoxDecoration(
            color: ConstColors.darkerGrey,

          ),
        ),

      ],
    );
  }
}

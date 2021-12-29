import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventSmallCard extends StatelessWidget {
  const EventSmallCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(161.0),
      width: getProportionateScreenWidth(319.0),
      margin: MyEdgeInsets.symmetric(horizontal: 8.0),
      padding: MyEdgeInsets.symmetric(horizontal: 16, vertical: 13.0),
      alignment: Alignment.bottomCenter,
      decoration: MyDecoration.withImage(
        imageUrl: Links.random,
        color: ConstColors.greyer,
        radius: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          EventInfo(
            alignment: MainAxisAlignment.start,
            label: 'Bright light Music Festival',
            textList: [
              TextWithIcon(AssetIcons.musicTag, 'Electronica'),
            ],
          ),
          _buildTextButton(),
        ],
      ),
    );
  }

  TextButton _buildTextButton() {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          MyText(
            "Learn more",
            color: ConstColors.white,
            weight: FontWeight.w600,
            size: 15.0,
          ),
          MySizedBox(width: 6.72),
          SvgPicture.asset(AssetIcons.chevronRight, color: ConstColors.white)
        ],
      ),
    );
  }
}

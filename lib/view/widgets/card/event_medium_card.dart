import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventMediumCard extends StatelessWidget {
  const EventMediumCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(172.0),
      width: getProportionateScreenWidth(287.0),
      padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
      alignment: Alignment.bottomCenter,
      decoration: MyDecoration.setDecorationWithImage(
        imageUrl: 'https://source.unsplash.com/random/4',
        color: ConstColors.greyer,
        radius: 16.0,
      ),
      child: EventInfo(
        label: 'Bright light Music Festival',
        textList: [
          TextWithIcon(AssetIcons.musicTag, 'Indie Rock'),
          TextWithIcon(AssetIcons.ticket, '\$40 - \$90'),
        ],
      ),
    );
  }
}

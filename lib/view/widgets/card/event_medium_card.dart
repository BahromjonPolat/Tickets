import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventMediumCard extends StatelessWidget {
  EventModel event;
   EventMediumCard(this.event, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(172.0),
      width: getProportionateScreenWidth(287.0),
      padding: MyEdgeInsets.all(16.0),
      alignment: Alignment.bottomCenter,
      decoration: MyDecoration.withImage(
        imageUrl: event.imageUrl,
        color: ConstColors.greyer,
        radius: 16.0,
      ),
      child: EventInfo(
        label: event.title,
        textSize: 18.0,
        textList: [
          TextWithIcon(AssetIcons.musicTag, event.genre),
          TextWithIcon(AssetIcons.ticket, '\$40 - \$90'),
        ],
      ),
    );
  }
}

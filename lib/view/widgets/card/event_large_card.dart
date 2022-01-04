import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class RecommendedLargeCard extends StatelessWidget {
  EventModel eventModel;

  RecommendedLargeCard(this.eventModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        CustomNavigator().push(DetailsPage(eventModel));
      },
      child: Stack(
        children: [
          Container(
            margin: MyEdgeInsets.symmetric(horizontal: 8.0),
            padding: MyEdgeInsets.all(16.0),
            height: getProportionateScreenHeight(256.0),
            width: getProportionateScreenWidth(327.0),
            decoration: MyDecoration.withImage(
              imageUrl: eventModel.imageUrl,
              radius: 16.0,
              color: ConstColors.primaryOrange.withOpacity(0.2),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  'FRIDAY AUG 24, 9PM',
                  color: ConstColors.white,
                  size: 12.0,
                  weight: FontWeight.w600,
                ),
                SizedBox(height: getProportionateScreenHeight(5.0)),
                EventInfo(
                  label: eventModel.title,
                  textList: [
                    TextWithIcon(AssetIcons.musicTag, eventModel.genre),
                    TextWithIcon(
                      AssetIcons.ticket,
                      '\$${eventModel.minPrice} - \$${eventModel.maxPrice}',
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: getProportionateScreenHeight(5.0),
            right: getProportionateScreenWidth(13.0),
            child: MyIconButton(
              onPressed: () {},
              assetIcon: AssetIcons.cancel,
              backgroundColor: ConstColors.greyer.withOpacity(0.4),
              color: ConstColors.white,
              radius: 15.0,
              iconSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';
import 'package:ticket/view/widgets/components/program_info.dart';

class RecommendedLargeCard extends StatelessWidget {
  const RecommendedLargeCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(8.0)),
          padding: EdgeInsets.all(getProportionateScreenWidth(16.0)),
          height: getProportionateScreenHeight(256.0),
          width: getProportionateScreenWidth(327.0),
          decoration: MyDecoration.setDecorationWithImage(
            imageUrl: 'https://source.unsplash.com/random/5',
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
              ProgramInfo(
                label: 'Bright light Music Festival',
                textList: [
                  TextWithIcon(AssetIcons.musicTag, 'Indie Rock'),
                  TextWithIcon(AssetIcons.ticket, 'Indie Rock'),
                ],
              )
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
    );
  }
}

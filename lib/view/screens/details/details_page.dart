import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          DetailsPageAppBar(),
          _setEventInfo(),
        ],
      ),
    );
  }

  SliverToBoxAdapter _setEventInfo() => SliverToBoxAdapter(
        child: Container(
          height: getProportionateScreenHeight(306.0),
          width: getProportionateScreenWidth(375.0),
          padding: MyEdgeInsets.symmetric(horizontal: 16.0, vertical: 17.0),
          color: ConstColors.darkNavy,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                'Brightlight Festival',
                size: 28.0,
                weight: FontWeight.w700,
                color: ConstColors.white,
              ),
              MySizedBox(height: 24.0),
              Row(
                children: [
                  _setTextWithIcon(AssetIcons.calendar, 'Friday, 24 Aug 2019'),
                  _setTextWithIcon(AssetIcons.dot, '6:30PM - 9:30PM'),
                ],
              ),
              _showAddress(),
              MySizedBox(height: 14.0),
              _setTextWithIcon(AssetIcons.musicTag, 'Indie Rock'),
              MySizedBox(height: 15.0),
              _setTextWithIcon(AssetIcons.ticket, '\$40 - 90'),
              MySizedBox(height: 15.0),
              _setTextWithIcon(AssetIcons.organizer, 'Club Kiss'),
            ],
          ),
        ),
      );

  ListTile _showAddress() {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      minLeadingWidth: 20.0,
      leading: SvgPicture.asset(
        AssetIcons.navigation,
        color: ConstColors.white,
      ),
      title: MyText(
        'Daboi Concert Hall',
        size: 16.0,
        weight: FontWeight.w400,
        color: ConstColors.white,
      ),
      subtitle: MyText(
        '5/7 Kolejowa, 01-217 Warsaw',
        size: 10.0,
        color: ConstColors.darkerGrey,
      ),
    );
  }

  TextWithIcon _setTextWithIcon(String assetIcon, String title) {
    return TextWithIcon(
      assetIcon,
      title,
      color: ConstColors.white,
      weight: FontWeight.w400,
      width: 10.0,
      textSize: 16.0,
    );
  }
}

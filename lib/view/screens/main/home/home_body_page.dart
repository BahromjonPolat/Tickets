import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(),
        SliverSizedBox.setHeight(45.0),
        _setCategory('For you', AssetIcons.filters),
        SliverSizedBox.setHeight(24.0),
        _showForYouChild(),
        _setSliverText('Collections'),
        _showCollectionList(),
        _setSliverText('Discover'),
        _showDiscoveryCards(),
        SliverSizedBox.setHeight(56.0),
        _showLocationIcon(),
        _setCategory('Upcoming', AssetIcons.right),
        SliverSizedBox.setHeight(25.0),
        _showUpcomingLayout(),
        SliverSizedBox.setHeight(25.0),
      ],
    );
  }

  SliverToBoxAdapter _showUpcomingLayout() => SliverToBoxAdapter(child: Padding(
    padding: MyEdgeInsets.symmetric(horizontal: 16.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: getProportionateScreenHeight(276.0),
          width: getProportionateScreenWidth(40.0),
          child: Column(
            children: [
              DateCard(dateTime: DateTime.now()),
              Flexible(
                child: ListView.builder(
                    itemCount: 12,
                    padding: MyEdgeInsets.symmetric(vertical: 8.0),
                    itemBuilder: (context, index) {
                  return Container(
                    alignment: Alignment.center,
                    height: getProportionateScreenHeight(4.0),
                    width: getProportionateScreenWidth(4.0),
                    margin: MyEdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: ConstColors.grey,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                  );
                }),
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            EventMediumCard(),
            SizedBox(height: getProportionateScreenHeight(16.0)),
            EventMoreCard(),
          ],
        ),
      ],
    ),
  ),);

  SliverToBoxAdapter _showLocationIcon() {
    return SliverToBoxAdapter(
        child: Padding(
          padding: MyEdgeInsets.symmetric(horizontal: 16.0),
          child: TextWithIcon(
            AssetIcons.locationMisc,
            'WARSHAW',
            color: ConstColors.greyer,
          ),
        ),
      );
  }

  SliverToBoxAdapter _showForYouChild() {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: getProportionateScreenHeight(256.0),
        child: ListView.builder(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(8.0),
            ),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              return const RecommendedLargeCard();
            }),
      ),
    );
  }

  SliverToBoxAdapter _showCollectionList() => SliverToBoxAdapter(
        child: SizedBox(
          height: getProportionateScreenHeight(161.0),
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(horizontal: 8.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const EventSmallCard();
              }),
        ),
      );

  SliverToBoxAdapter _showDiscoveryCards() => SliverToBoxAdapter(
        child: SizedBox(
          height: getProportionateScreenHeight(56.0),
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(horizontal: 8.0),
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DiscoverCard(
                  AssetIcons.navigation,
                  'YOUR AREA',
                  ConstColors.red,
                );
              }),
        ),
      );

  SliverToBoxAdapter _setCategory(String title, String assetIcon) =>
      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(16.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(title, size: 28.0, weight: FontWeight.w700),
              MyIconButton(onPressed: () {}, assetIcon: assetIcon),
            ],
          ),
        ),
      );

  SliverToBoxAdapter _setSliverText(String text) => SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.only(
            left: getProportionateScreenWidth(16.0),
            top: getProportionateScreenHeight(56.0),
            bottom: getProportionateScreenHeight(25.0),
          ),
          child: MyText(text, size: 28.0, weight: FontWeight.w700),
        ),
      );
}

import 'package:flutter/material.dart';
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
      ],
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
              padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(8.0),
              ),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return EventSmallCard();
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

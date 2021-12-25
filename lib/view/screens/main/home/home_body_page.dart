import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';
import 'package:ticket/view/widgets/buttons/my_icon_button.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        HomeAppBar(),
        SliverSizedBox.setHeight(45.0),
        _setCategory('For you', AssetIcons.filters),
        SliverToBoxAdapter(child: RecommendedLargeCard(),)
      ],
    );
  }

  SliverToBoxAdapter _setCategory(String title, String assetIcon) => SliverToBoxAdapter(
    child: Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(16.0)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(title, size: 28.0, weight: FontWeight.w700),
          MyIconButton(onPressed: (){}, assetIcon: assetIcon),
        ],
      ),
    ),
  );
}

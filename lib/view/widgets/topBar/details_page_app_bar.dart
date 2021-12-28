import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DetailsPageAppBar extends StatelessWidget with PreferredSizeWidget {
  DetailsPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: getProportionateScreenHeight(520.0),
      backgroundColor: ConstColors.darkNavy,
      pinned: true,
      // floating: true,
      flexibleSpace: const FlexibleSpaceBar(
        background: FadeInImage(
          fit: BoxFit.cover,
          placeholder: AssetImage(AssetImages.emptyFilter),
          image: NetworkImage(Links.random),
        ),
      ),
      actions: [
        MyIconButton(
          onPressed: () {},
          assetIcon: AssetIcons.share,
          backgroundColor: Colors.transparent,
          color: Colors.white,
        ),
        MyIconButton(
          onPressed: () {},
          assetIcon: AssetIcons.like,
          backgroundColor: Colors.transparent,
          color: Colors.white,
        ),
        MySizedBox(width: 16.0),
      ],
    );
  }

  @override
  Size get preferredSize => Size(
        double.infinity,
        getProportionateScreenHeight(520.0),
      );
}

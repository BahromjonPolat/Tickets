import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DetailsPageAppBar extends StatelessWidget with PreferredSizeWidget {

  EventModel eventModel;
  DetailsPageAppBar({required this.eventModel,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: getProportionateScreenHeight(520.0),
      backgroundColor: ConstColors.darkNavy,
      pinned: true,
      // floating: true,
      flexibleSpace:  FlexibleSpaceBar(
        background: FadeInImage(
          fit: BoxFit.cover,
          placeholder: const AssetImage(AssetImages.emptyFilter),
          image: NetworkImage(eventModel.imageUrl),
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

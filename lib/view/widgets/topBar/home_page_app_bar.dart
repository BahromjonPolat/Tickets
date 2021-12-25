import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class HomeAppBar extends StatelessWidget with PreferredSizeWidget {
  HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      centerTitle: true,
      backgroundColor: ConstColors.white,
      elevation: 0.5,
      pinned: true,
      title: Text(
        'Home',
        style: TextStyle(
          color: ConstColors.black,
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(24.0),
        ),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomRight: _buildRadius(),
          bottomLeft: _buildRadius(),
        ),
      ),
    );
  }

  Radius _buildRadius() => Radius.circular(getProportionateScreenWidth(16.0));

  @override
  Size get preferredSize => Size(
        double.infinity,
        getProportionateScreenHeight(61.0),
      );
}

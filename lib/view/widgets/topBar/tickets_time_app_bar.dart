import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TicketsTimeAppBar extends StatelessWidget with PreferredSizeWidget {
  const TicketsTimeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      automaticallyImplyLeading: false,
      title: MyText('WARSHAW', size: 28, weight: FontWeight.w700),
      actions: [
        MyIconButton(onPressed: () {}, assetIcon: AssetIcons.calendar),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize =>
      Size(double.infinity, getProportionateScreenHeight(61.0));
}

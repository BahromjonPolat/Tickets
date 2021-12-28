import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class BottomBarTicketPriceLight extends StatelessWidget {
  VoidCallback onPressed;

  BottomBarTicketPriceLight({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(91.0),
      width: getProportionateScreenWidth(375.0),
      color: ConstColors.white,
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  '€30 - €80',
                  size: 15.0,
                  weight: FontWeight.w600,
                  color: ConstColors.black,
                ),
                MyText(
                  'Get now on ebilet.pl',
                  weight: FontWeight.w700,
                  size: 10.0,
                  color: ConstColors.darkerGrey,
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: MyEdgeInsets.symmetric(horizontal: 15.0),
              child: DefaultButton(
                onPressed: onPressed,
                label: 'Buy Tickets',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

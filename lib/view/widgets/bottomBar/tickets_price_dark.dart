import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class BottomBarTicketPriceDark extends StatelessWidget {
  const BottomBarTicketPriceDark({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(91.0),
      width: getProportionateScreenWidth(375.0),
      color: ConstColors.darkNavy,
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
                  color: ConstColors.white,
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
              child: WhiteButton(
                onPressed: () {},
                label: 'Buy Tickets',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

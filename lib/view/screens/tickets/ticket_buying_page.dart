import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TicketBuyingPage extends StatelessWidget {
  const TicketBuyingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MySizedBox(height: 84.0),
          Padding(
            padding: MyEdgeInsets.symmetric(horizontal: 48.0),
            child: Image.asset(AssetImages.stadium),
          ),
          MySizedBox(height: 42.0),
          Padding(
            padding: MyEdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText('Tickets', size: 18.0, weight: FontWeight.w700),
                Row(
                  children: [
                    MyText(
                      'Tickets',
                      size: 12.0,
                      weight: FontWeight.w600,
                      color: ConstColors.red,
                    ),
                    MySizedBox(width: 12.0),
                    MyIconButton(
                      onPressed: () {},
                      assetIcon: AssetIcons.sort,
                      radius: 16.0,
                    ),
                  ],
                )
              ],
            ),
          ),
          TableTicketPrice(),
          TableTicketPrice(color: ConstColors.green),
          TableTicketPrice(color: ConstColors.blue),
        ],
      ),
      bottomNavigationBar: BottomBarTicketPriceLight(
        onPressed: () {},
      ),
    );
  }
}

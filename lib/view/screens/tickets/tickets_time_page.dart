import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TicketsTimePage extends StatelessWidget {
  const TicketsTimePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TicketsTimeAppBar(),
      body: Padding(
        padding: MyEdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              'SEPTEMBER',
              size: 12.0,
              weight: FontWeight.w700,
              color: ConstColors.red,
            ),
            MySizedBox(height: 16.0),
            TableTicketDate(onPressed: (){}),
            TableTicketDate(onPressed: (){}),
            TableTicketDate(onPressed: (){}, isVisibilityDot:  false),
          ],
        ),
      ),
    );
  }
}

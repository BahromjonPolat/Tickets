import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TicketsTimePage extends StatelessWidget {
  TicketsTimePage({Key? key}) : super(key: key);
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
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
            TableTicketDate(onPressed: _onPressed),
            TableTicketDate(onPressed: _onPressed),
            TableTicketDate(onPressed: _onPressed, isVisibilityDot: false),
          ],
        ),
      ),
    );
  }

  void _onPressed() {
    Navigator.push(
      _context,
      MaterialPageRoute(
        builder: (_) => TicketBuyingPage(),
      ),
    );
  }
}

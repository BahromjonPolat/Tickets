import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class DateCard extends StatelessWidget {
  DateTime dateTime;

  DateCard({required this.dateTime, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(56.0),
      width: getProportionateScreenWidth(40.0),
      child: Card(
        margin: EdgeInsets.zero,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyText('${dateTime.day}', size: 20.0, weight: FontWeight.w600),
            MyText(
              'THU',
              size: 10.0,
              weight: FontWeight.w700,
              color: ConstColors.greyer,
            ),
          ],
        ),
        shape: _setCardShape(),
      ),
    );
  }

  RoundedRectangleBorder _setCardShape() {
    return RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(getProportionateScreenWidth(12.0)),
    );
  }
}

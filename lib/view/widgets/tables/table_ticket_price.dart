import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TableTicketPrice extends StatelessWidget {
  Color color;

  TableTicketPrice({
    this.color = ConstColors.red,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(vertical: 12.0),
      child: SizedBox(
        height: getProportionateScreenHeight(40.0),
        child: ListTile(

          leading: CircleAvatar(
            radius: getProportionateScreenWidth(20.0),
            backgroundColor: color.withOpacity(0.33),
            child: SvgPicture.asset(AssetIcons.ticket, color: color),
          ),
          title: MyText('Section P, Row 3', size: 12.0, weight: FontWeight.w700),
          subtitle: MyText(
            '12 Seats available',
            size: 12.0,
            weight: FontWeight.w600,
            color: ConstColors.greyer,
          ),
          trailing: Column(
            children: [
              MyText('€30', size: 16.0, weight: FontWeight.w600),
              MySizedBox(height: 4.0),
              MyText(
                'per person',
                size: 12.0,
                weight: FontWeight.w600,
                color: ConstColors.greyer,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

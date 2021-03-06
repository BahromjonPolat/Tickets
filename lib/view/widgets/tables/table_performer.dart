import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TablePerformer extends StatelessWidget {
  const TablePerformer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: getProportionateScreenWidth(32.0),
          ),
          MySizedBox(width: 12.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText('Sawbirds', size: 16.0, weight: FontWeight.w600),
              MySizedBox(height: 4.0),
              TextWithIcon(
                AssetIcons.musicTag,
                'Indie Rock',
                color: ConstColors.greyer,
              ),
              MySizedBox(height: 5.0),
              MyText(
                'Next event Friday Aug 25, 10PM',
                color: ConstColors.greyer,
              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TablePlace extends StatelessWidget {
  const TablePlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MyEdgeInsets.symmetric(vertical: 20.0),
      child: SizedBox(
        height: getProportionateScreenHeight(64.0),
        child: Row(
          children: [
            _setImage(),
            MySizedBox(width: 12.0),
            _showEventInfo(),
          ],
        ),
      ),
    );
  }

  Column _showEventInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _setText('Lizbońska 4, Warsaw'),
        MySizedBox(height: 4.0),
        EventInfo(
          label: 'Daboi Concert Hall',
          textSize: 16.0,
          color: ConstColors.black,
          textList: [
            TextWithIcon(
              AssetIcons.musicTag,
              'Indie Rock',
              color: ConstColors.greyer,
            ),
          ],
        ),
      ],
    );
  }

  ClipRRect _setImage() {
    return ClipRRect(
      borderRadius: MyBorderRadius.circular(radius: 16.0),
      child: Image.network(
        Links.random,
        fit: BoxFit.cover,
        width: getProportionateScreenWidth(64.0),
        height: getProportionateScreenHeight(64.0),
      ),
    );
  }

  MyText _setText(String text) => MyText(
        text,
        size: 10.0,
        weight: FontWeight.w600,
      );
}

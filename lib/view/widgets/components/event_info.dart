import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class EventInfo extends StatelessWidget {
  List<TextWithIcon> textList;
  String label;
  Color color;
  MainAxisAlignment alignment;
  double textSize;
  EventInfo({
    required this.label,
    required this.textList,
    this.color = ConstColors.white,
    this.alignment = MainAxisAlignment.end,
    this.textSize = 22.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: alignment,
      children: [
        MyText(label, color: color, size: textSize, weight: FontWeight.w600),
        SizedBox(height: getProportionateScreenHeight(8.0)),
        Row(children: textList.map((e) => e).toList()),
      ],
    );
  }
}

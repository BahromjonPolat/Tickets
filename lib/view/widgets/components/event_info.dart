import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class ProgramInfo extends StatelessWidget {
  List<TextWithIcon> textList;
  String label;
  Color color;

  ProgramInfo({
    required this.label,
    required this.textList,
    this.color = ConstColors.white,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(label, color: color, size: 22.0, weight: FontWeight.w600),
        SizedBox(height: getProportionateScreenHeight(8.0)),
        Row(children: textList.map((e) => e).toList()),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class TableTicketDate extends StatelessWidget {
  VoidCallback onPressed;
  bool isVisibilityDot;
  TableTicketDate({
    required this.onPressed,
    this.isVisibilityDot = true,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(104.0),
      child: InkWell(
        borderRadius: MyBorderRadius.circular(radius: 16.0),
        onTap: onPressed,
        child: Row(
          children: [
            Column(
              children: [
                DateCard(dateTime: DateTime.now()),
                Visibility(
                    visible: isVisibilityDot,
                    child: Column(
                      children: [
                        _buildPadding(),
                        _buildPadding(),
                      ],
                    ))
              ],
            ),
            MySizedBox(width: 24.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  'Trying New Material',
                  size: 18.0,
                  weight: FontWeight.w600,
                ),
                MySizedBox(height: 8.0),
                MyText(
                  'Capitol Theater, Warsaw',
                  weight: FontWeight.w600,
                  size: 12.0,
                  color: ConstColors.greyer,
                ),
                MySizedBox(height: 6.0),
                MyText(
                  '19:00-20:45',
                  weight: FontWeight.w600,
                  size: 12.0,
                  color: ConstColors.greyer,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Padding _buildPadding() {
    return Padding(
      padding: MyEdgeInsets.symmetric(vertical: 8.0),
      child: SvgPicture.asset(AssetIcons.dot, color: ConstColors.greyer),
    );
  }
}

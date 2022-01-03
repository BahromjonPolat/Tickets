import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class ProfilePageBody extends StatelessWidget {
  const ProfilePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: MyEdgeInsets.symmetric(vertical: 48.0, horizontal: 16.0),
      children: [
        _header(),
      ],
    );
  }

  _header() => ListTile(
        tileColor: ConstColors.red,
        shape: MyShape.setCircularBorder(radius: 6.0),
        leading: const CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(Links.random),
        ),
        title: MyText(
          'Bahromjon Polat',
          weight: FontWeight.w600,
          color: ConstColors.white,
        ),
        subtitle: MyText(
          'bahromjon.ergashboyev@gmai.com',
          size: 12.0,
          color: ConstColors.grey,
        ),
        onTap: () async {

        },
      );


}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageTopBar extends StatelessWidget {
  const SearchPageTopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: MyEdgeInsets.symmetric(horizontal: 12.0),
            child: SearchTextField()),
        SizedBox(
          height: getProportionateScreenHeight(64.0),
          child: ListView.builder(
              padding: MyEdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, i) {
                return SearchPageButton(onPressed: () {}, label: 'label');
              }),
        )
      ],
    );
  }
}

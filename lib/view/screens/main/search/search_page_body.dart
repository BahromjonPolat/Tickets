import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MyEdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SearchTextField()
        ],
      ),
    );
  }
}

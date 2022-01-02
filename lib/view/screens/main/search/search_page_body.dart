import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchPageBody extends StatelessWidget {
  const SearchPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: MyDecoration.withAssetImage(imageUrl: AssetImages.map),
      child: CustomScrollView(
        slivers: [
          SearchPageAppBar(),
        ],
      ),
    );
  }
  
}

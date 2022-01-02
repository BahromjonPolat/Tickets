import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SearchTextField extends StatelessWidget {
  SearchTextField({Key? key}) : super(key: key);
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: MyShape.setCircularBorder(radius: 12.0),
      child: TextField(
        controller: _searchController,
        style: CustomInputDecoration.setTextStyle(ConstColors.black),
        textInputAction: TextInputAction.search,
        cursorColor: ConstColors.black,
        onSubmitted: _onSubmitted,
        decoration: CustomInputDecoration.outlineDecoration(
          hint: 'Search',
          assetIcon: AssetIcons.search,
        ),
      ),
    );
  }

  void _onSubmitted(String value) {
    print(value);
  }
}

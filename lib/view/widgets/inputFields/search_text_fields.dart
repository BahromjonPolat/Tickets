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
        decoration: _buildInputDecoration(),
        style: _setTextStyle(ConstColors.black),
        textInputAction: TextInputAction.search,
        cursorColor: ConstColors.black,
        onSubmitted: _onSubmitted,
      ),
    );
  }

  InputDecoration _buildInputDecoration() {
    return InputDecoration(
      fillColor: ConstColors.white,
      filled: true,
      border: _buildOutlineInputBorder(),
      enabledBorder: _buildOutlineInputBorder(),
      hintText: 'Search',
      hintStyle: _setTextStyle(ConstColors.grey),
      contentPadding: EdgeInsets.zero,
      prefixIcon: SvgPicture.asset(
        AssetIcons.search,
        fit: BoxFit.none,
        color: ConstColors.greyer,
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder() => OutlineInputBorder(
        borderRadius: MyBorderRadius.circular(radius: 12.0),
        borderSide: BorderSide.none,
      );

  TextStyle _setTextStyle(Color color) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: getProportionateScreenWidth(16.0),
        color: color,
      );

  void _onSubmitted(String value) {
    print(value);

  }
}

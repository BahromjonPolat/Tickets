import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class CustomInputDecoration {
  static InputDecoration outlineDecoration({
    String hint = '',
    String? assetIcon,
  }) {
    return InputDecoration(
      fillColor: ConstColors.white,
      filled: true,
      border: _buildOutlineInputBorder(),
      enabledBorder: _buildOutlineInputBorder(),
      hintText: hint,
      hintStyle: setTextStyle(ConstColors.grey),
      contentPadding: EdgeInsets.zero,
      prefixIcon: SvgPicture.asset(
        assetIcon!,
        fit: BoxFit.none,
        color: ConstColors.greyer,
      ),
    );
  }

  static OutlineInputBorder _buildOutlineInputBorder() => OutlineInputBorder(
        borderRadius: MyBorderRadius.circular(radius: 12.0),
        borderSide: BorderSide.none,
      );

  static TextStyle setTextStyle(Color color) => TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: getProportionateScreenWidth(16.0),
        color: color,
      );
}

import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hint;
  TextInputAction inputAction;
  TextInputType inputType;
  bool obscureText;
  String assetIcon;

  CustomFormField({
    Key? key,
    this.controller,
    this.inputAction = TextInputAction.unspecified,
    this.inputType = TextInputType.text,
    this.hint = '',
    this.obscureText = false,
    this.assetIcon = AssetIcons.userInactive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: MyShape.setCircularBorder(radius: 12.0),
      child: TextFormField(
        controller: controller,
        textInputAction: inputAction,
        keyboardType: inputType,
        obscureText: obscureText,
        decoration: CustomInputDecoration.outlineDecoration(
          hint: hint,
          assetIcon: assetIcon,
        ),
        style: CustomInputDecoration.setTextStyle(
          ConstColors.greyer,
          weight: FontWeight.w500,
        ),
      ),
    );
  }
}

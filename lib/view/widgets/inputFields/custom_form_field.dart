import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class CustomFormField extends StatelessWidget {
  TextEditingController? controller;
  String hint;
  TextInputAction inputAction;
  TextInputType inputType;
  bool obscureText;

  CustomFormField({
    Key? key,
    this.controller,
    this.inputAction = TextInputAction.unspecified,
    this.inputType = TextInputType.text,
    this.hint = '',
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: MyShape.setCircularBorder(radius: 12.0),
      child: TextFormField(
        controller: controller,
        textInputAction: inputAction,
        keyboardType: inputType,
        decoration: CustomInputDecoration.outlineDecoration(hint: hint),
        style: CustomInputDecoration.setTextStyle(ConstColors.black),
      ),
    );
  }
}

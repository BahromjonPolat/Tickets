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
        validator: _checkFieldEmpty,
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

  String? _checkFieldEmpty(String? fieldContent) {
    //<-- add String? as a return type
    if (fieldContent!.isEmpty) {
      return 'Please, Fill the field';
    } else if (fieldContent.length < 3) {
      return 'Minimum 3 characters';
    } else if (inputType == TextInputType.emailAddress) {
      if (!_isEmail(controller!.text.trim())) {
        return 'Please, Enter a valid email';
      }
    }
    return null;
  }

  bool _isEmail(String input) {
    return RegExp(
            r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
        .hasMatch(input);
  }
}

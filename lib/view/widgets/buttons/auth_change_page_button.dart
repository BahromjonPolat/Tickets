import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class PageChangingButton extends StatelessWidget {
  bool isLogin;
  VoidCallback onPressed;

  PageChangingButton({
    this.isLogin = true,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyText(isLogin ? _loginText : _signUpText),
        MyTextButton(
          onPressed: onPressed,
          label: isLogin ? 'Login' : 'Sign up',
          padding: 12.0,
        ),
      ],
    );
  }

  final String _loginText = "Don't have an account?";
  final String _signUpText = 'Have you an account?';
}

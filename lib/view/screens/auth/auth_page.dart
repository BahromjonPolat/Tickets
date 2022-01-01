import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);

  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MyEdgeInsets.symmetric(horizontal: 16.0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                child: _authProvider.isLogin ? SignInPage() :SignUpPage(),
              ),
              _setTitle(),
              _buildPageChangingButton(),
            ],
          ),
        ),
      ),
    );
  }

  Positioned _buildPageChangingButton() {
    return Positioned(
      bottom: getProportionateScreenHeight(32.0),
      child: PageChangingButton(
        onPressed: _authProvider.onPageChanged,
        isLogin: _authProvider.isLogin,
      ),
    );
  }

  Positioned _setTitle() => Positioned(
        top: getProportionateScreenHeight(164.0),
        child: MyText(
          _authProvider.isLogin ? "Login" : "SignUp",
          size: 32.0,
          weight: FontWeight.w600,
        ),
      );
}

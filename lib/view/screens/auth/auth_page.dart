import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);

  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Scaffold(
      body: Padding(
        padding: MyEdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(
                  _authProvider.isLogin ? "Login" : "Sign Up",
                  weight: FontWeight.w600,
                  size: 32.0,
                ),
                MySizedBox(height: 45.0),
                // Agar provider'ning isLogin xossasining qiymati 'TRUE' bo'lsa
                // Login sahifasining form field'lari ko'rsatiladi.
                // Ask holda Sign up sahifasiniki.
                Form(
                  key: _authProvider.formKey,
                  child: _authProvider.currentPage,
                ),

                MySizedBox(height: 24.0),
                DefaultButton(onPressed: (){}, label: 'label'),
                MySizedBox(height: 64.0),
                PageChangingButton(
                  onPressed: _authProvider.onPageChanged,
                  isLogin: _authProvider.isLogin,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

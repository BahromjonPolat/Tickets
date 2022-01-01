import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthPage extends StatelessWidget {
  AuthPage({Key? key}) : super(key: key);

  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: _authProvider.formKey,
            child: _authProvider.currentPage,
          ),
          PageChangingButton(onPressed: (){}),
        ],
      ),
    );
  }
}

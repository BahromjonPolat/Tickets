import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);
  late AuthProvider _authProvider;

  @override
  Widget build(BuildContext context) {
    _authProvider = context.watch();
    return Form(
      key: _authProvider.formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomFormField(
            hint: 'Name',
            controller: _authProvider.nameController,
            inputType: TextInputType.name,
            inputAction: TextInputAction.next,
            assetIcon: AssetIcons.person,
          ),
          MySizedBox(height: 12.0),
          CustomFormField(
            hint: 'Email',
            controller: _authProvider.emailController,
            inputType: TextInputType.emailAddress,
            inputAction: TextInputAction.next,
            assetIcon: AssetIcons.email,
          ),
          MySizedBox(height: 12.0),
          CustomFormField(
            hint: 'Password',
            controller: _authProvider.passwordController,
            inputType: TextInputType.visiblePassword,
            inputAction: TextInputAction.done,
            obscureText: true,
            assetIcon: AssetIcons.key,
          ),
          MySizedBox(height: 24.0),
          DefaultButton(
            onPressed: () {
              _authProvider.onPressed();
            },
            label: 'Sign Up',
          ),
        ],
      ),
    );
  }
}

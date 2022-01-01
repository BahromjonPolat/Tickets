import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);
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
          Align(
            alignment: Alignment.centerRight,
            child: MyTextButton(
              onPressed: () {},
              label: 'Forgot password?',
              padding: 8.0,
            ),
          ),

          DefaultButton(onPressed: (){
            _authProvider.onPressed();
          }, label: 'Login'),
        ],
      ),
    );
  }
}

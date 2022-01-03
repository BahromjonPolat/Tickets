import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = true;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void onPageChanged() {
    _isLogin = !_isLogin;
    notifyListeners();
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      final AuthService authService = AuthService();
      String name = _nameController.text.trim();
      String email = _emailController.text.trim().toLowerCase();
      String password = _passwordController.text.trim();
      UserModel user = UserModel(
        name,
        email,
        password,
        'default',
        DateTime.now(),
        DateTime.now(),
        false,
      );

      if (_isLogin) {
      } else {
        authService.signUp(user).then((value) {
          Fluttertoast.showToast(msg: value);
        });
      }
    }
  }

  get formKey => _formKey;

  bool get isLogin => _isLogin;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;

  TextEditingController get nameController => _nameController;
}

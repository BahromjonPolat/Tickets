import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = true;
  Widget _currentPage = SignInPage();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  void onPageChanged() {
    _isLogin = !_isLogin;
    if (_isLogin) {
      _currentPage = SignInPage();
    } else {
      _currentPage = SignUpPage();
    }
    notifyListeners();
  }

  void onPressed() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text.trim();
      String email = _emailController.text.trim().toLowerCase();
      String password = _passwordController.text.trim();

      if (_isLogin) {

      } else {

      }
    }
  }

  Widget get currentPage => _currentPage;

  get formKey => _formKey;

  bool get isLogin => _isLogin;

  TextEditingController get passwordController => _passwordController;

  TextEditingController get emailController => _emailController;

  TextEditingController get nameController => _nameController;
}

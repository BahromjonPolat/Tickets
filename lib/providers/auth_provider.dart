import 'package:flutter/material.dart';
import 'package:ticket/core/components/exporting_packages.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLogin = true;
  Widget _currentPage = SignInPage();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
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
      print('Clicked');
      Fluttertoast.showToast(msg: 'Please, Fill');
    }
  }

  Widget get currentPage => _currentPage;

  get formKey => _formKey;

  bool get isLogin => _isLogin;
}

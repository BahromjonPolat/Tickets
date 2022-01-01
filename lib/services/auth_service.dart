import 'package:ticket/core/components/exporting_packages.dart';

class AuthService {
  Future getAllUsers() async {
    try {
      var res = await Dio().get('http://10.0.2.2:3000/users');
    } catch (err) {}
  }

  Future getUserById(String uid) async {
    try {
      Response res = await Dio().get('http://10.0.2.2:3000/users/$uid');
      UserModel userModel = UserModel.fromJson(res.data);
    } catch (err) {}
  }

  Future signUp(UserModel user) async {
    try {
      Response res =
          await Dio().post('http://10.0.2.2:3000/users', data: user.toMap());
    } catch (err) {}
  }
}

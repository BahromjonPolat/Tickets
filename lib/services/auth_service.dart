import 'package:ticket/core/components/exporting_packages.dart';

class AuthService {
  Future getAllUsers() async {
    try {
      var res = await Dio().get('${NetworkLink.ipAddress}/users');
    } catch (err) {
      print(err);
    }
  }

  Future getUserById(String uid) async {
    try {
      Response res = await Dio().get('${NetworkLink.ipAddress}/users/$uid');
      print(res.data);
      UserModel userModel = UserModel.fromJson(res.data);
    } catch (err) {
      print(err);
    }
  }

  Future signIn(String email, String password) async {
    try {
      // Response res = await Dio().get('http://192.168.43.42:3000/users/$uid');
    } catch (err) {}
  }

  Future<String> signUp(UserModel user) async {
    try {
      Response res = await Dio()
          .post('${NetworkLink.ipAddress}/users', data: user.toMap());
      if (res.statusCode == 200) {
        SharedPreferences pref = await SharedPreferences.getInstance();
        await pref.setBool('isLogged', true);
        await pref.setString('profile', res.data.toString());
        return "Successful";
      } else {
        return res.data['message'];
      }
    } catch (err) {
      print(err);
    }
    return 'Email is used';
  }
}

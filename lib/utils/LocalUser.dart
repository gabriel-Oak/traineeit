import 'package:traineeit/models/user_model.dart';

class LocalUser {
  static UserModel _user;

  UserModel get user {
    return _user;
  }

  set user(UserModel usr) {
    _user = usr;
  }
}

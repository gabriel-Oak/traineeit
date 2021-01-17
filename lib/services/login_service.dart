import 'package:dio/dio.dart';
import 'package:traineeit/models/user_model.dart';

import '../env.dart';

class LoginService {
  final dio = Dio();

  LoginService() {
    dio.options.baseUrl = kUrl;
  }

  Future<UserModel> login(String googleId) async {
    final res =
        await dio.get('/login', queryParameters: {'googleid': googleId});
    final List listUser = res.data;
    if(listUser.length == 0) return null;
    final user = listUser[0];
    print(user);
    return UserModel(id: user['id'], googleId: googleId, name: user['name'], email: user['email'], type: user['tipousuario']);
  }

  Future<UserModel> create(UserModel user) async {
    print({
      "tipousuario": user.type,
      "nome": user.name,
      "email": user.email,
      "googleid": user.googleId
    });
    final res = await dio.post('/usuario/', data: {
      "tipousuario": user.type,
      "nome": user.name,
      "email": user.email,
      "googleid": user.googleId
    });
    final userJson = res.data;
    print('userJson $userJson');
    return UserModel(id: userJson['id'], googleId: userJson['googleid'], name: userJson['name'], email: userJson['email'], type: userJson['tipousuario']);
  }
}

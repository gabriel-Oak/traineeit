import 'package:dio/dio.dart';
import 'package:traineeit/models/user_read_model.dart';

class UserService {
  final dio = Dio();

  UserService() {
    dio.options.baseUrl = 'https://apiccr.herokuapp.com/api';
  }

  Future<UserReadModel> getUser(int id) async {
    final Response<Map<String, dynamic>> res =
        await dio.get('/usuarioleitura/$id/');
    return UserReadModel.fromJSON(res.data);
  }
}

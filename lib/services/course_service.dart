import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:traineeit/env.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:traineeit/models/user_course_model.dart';

class CourseService {
  final dio = Dio();

  CourseService() {
    dio.options.baseUrl = kUrl;
  }

  Future<List<CourseReadModel>> getCourses() async {
    final Response<List> res = await dio.get('/cursoleitura');
    return res.data.map((e) => CourseReadModel.fromJSON(e)).toList();
  }

  Future<UserCourseModel> getById(int id) async {
    final Response<Map<String, dynamic>> res = await dio.get('/curso/$id');
    return UserCourseModel.fromJSON(res.data);
  }

  Future<CourseReadModel> getByIdRead(int id) async {
    final Response<Map<String, dynamic>> res =
        await dio.get('/cursoleitura/$id');
    return CourseReadModel.fromJSON(res.data);
  }

  Future<CourseReadModel> create({
    @required String name,
    @required String description,
    @required String data,
    @required String hora,
  }) async {
    final Response<Map<String, dynamic>> res = await dio.post('/curso/', data: {
      "nome": name,
      "descricao": description,
      "datahora": '$data $hora',
      "aulas": [],
    });
    return CourseReadModel.fromJSON(res.data);
  }
}

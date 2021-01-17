import 'package:dio/dio.dart';
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
    final Response<Map<String, dynamic>> res = await dio.get('/curso/3');
    return UserCourseModel.fromJSON(res.data);
  }

  Future<CourseReadModel> getByIdRead(int id) async {
    final Response<Map<String, dynamic>> res = await dio.get('/curso/3');
    return CourseReadModel.fromJSON(res.data);
  }
}

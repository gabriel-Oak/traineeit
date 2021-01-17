import 'package:dio/dio.dart';
import 'package:traineeit/models/course_read_model.dart';

class CourseService {
  final dio = Dio();

  CourseService() {
    dio.options.baseUrl = 'https://apiccr.herokuapp.com/api';
  }

  Future<List<CourseReadModel>> getCourses() async {
    final Response<List> res = await dio.get('/cursoleitura');
    return res.data.map((e) => CourseReadModel.fromJSON(e)).toList();
  }

  Future<CourseReadModel> getById(int id) async {
    final Response<List> res = await dio.get('/curso/3');
    // return res.data.map((e) => CourseReadModel.fromJSON(e)).toList();
  }
}

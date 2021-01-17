import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:traineeit/models/user_course_model.dart';

class UserReadModel extends Equatable {
  final int id;
  final String name;
  final String email;
  final String googleid;
  final List<dynamic> courses;

  UserReadModel({
    @required this.id,
    @required this.name,
    @required this.email,
    @required this.googleid,
    @required this.courses,
  });

  factory UserReadModel.fromJSON(Map<String, dynamic> map) => UserReadModel(
        id: map['id'],
        name: map['nome'],
        email: map['email'],
        googleid: map['googleid'],
        courses: map['cursos'].map((e) => UserCourseModel.fromJSON(e)).toList(),
      );

  @override
  List<Object> get props => [id, name, email, googleid, courses];
}

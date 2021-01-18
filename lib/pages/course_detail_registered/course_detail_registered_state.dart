import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:traineeit/models/user_read_model.dart';

@immutable
class CourseDetailRegisteredState extends Equatable {
  final UserReadModel user;
  final bool loading;
  final String error;
  final List<CourseReadModel> courses;

  CourseDetailRegisteredState({
    this.user,
    this.loading = false,
    this.error,
    this.courses = const [],
  });

  CourseDetailRegisteredState copyWith({
    UserReadModel user,
    bool loading,
    String error,
    List<CourseReadModel> courses,
  }) =>
      CourseDetailRegisteredState(
        user: user ?? this.user,
        loading: loading ?? this.loading,
        courses: courses ?? this.courses,
        error: error,
      );

  @override
  List<Object> get props => [user, loading, error, courses];
}

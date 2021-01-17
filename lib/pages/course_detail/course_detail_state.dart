import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:traineeit/models/course_read_model.dart';

@immutable
class CourseDetailState extends Equatable {
  final bool loading;
  final CourseReadModel course;
  final String error;

  CourseDetailState({
    this.loading = false,
    this.course,
    this.error,
  });

  CourseDetailState copyWith({
    bool loading,
    CourseReadModel course,
    String error,
  }) =>
      CourseDetailState(
        loading: loading ?? this.loading,
        course: course ?? this.course,
        error: error,
      );

  @override
  List<Object> get props => [loading, course];
}

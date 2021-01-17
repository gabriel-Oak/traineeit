import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:traineeit/models/course_read_model.dart';

@immutable
class PresenceState extends Equatable {
  final CourseReadModel course;
  final bool loading;
  final String error;

  PresenceState({
    this.course,
    this.loading = false,
    this.error,
  });

  PresenceState copyWith(
          {bool loading, CourseReadModel course, String error}) =>
      PresenceState(
        loading: loading ?? this.loading,
        course: course ?? this.course,
        error: error,
      );

  @override
  List<Object> get props => [course, loading, error];
}

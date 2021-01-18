import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:traineeit/models/user_read_model.dart';
import 'package:traineeit/services/course_service.dart';
import 'package:traineeit/services/user_service.dart';
import 'package:traineeit/utils/LocalUser.dart';

import 'course_detail_registered_event.dart';
import 'course_detail_registered_state.dart';

class CourseDetailRegisteredBloc extends Bloc<CourseDetailRegisteredEvent, CourseDetailRegisteredState> {
  final UserService userService;
  final CourseService courseService;
  final LocalUser localUser;

  CourseDetailRegisteredBloc(
      {@required this.userService,
      @required this.courseService,
      @required this.localUser})
      : super(CourseDetailRegisteredState());

  @override
  Stream<CourseDetailRegisteredState> mapEventToState(CourseDetailRegisteredEvent event) async* {
    if (event is InitCourseDetailRegistered) {
      yield state.copyWith(loading: true);
      try {
        final UserReadModel user = await userService.getUser(localUser.user.id);
        final List<CourseReadModel> courses = await courseService.getCourses();
        yield state.copyWith(loading: false, user: user, courses: courses);
      } catch (e) {
        yield state.copyWith(
          loading: false,
          error: 'Erro ao buscar informações!',
        );
      }
    }
  }
}

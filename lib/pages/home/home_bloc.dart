import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:traineeit/models/user_read_model.dart';
import 'package:traineeit/pages/home/home_event.dart';
import 'package:traineeit/pages/home/home_state.dart';
import 'package:traineeit/services/course_service.dart';
import 'package:traineeit/services/user_service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserService userService;
  final CourseService courseService;

  HomeBloc({@required this.userService, @required this.courseService})
      : super(HomeState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is InitHome) {
      yield state.copyWith(loading: true);
      try {
        final UserReadModel user = await userService.getUser(1);
        final List<CourseReadModel> courses = await courseService.getCourses();
        yield state.copyWith(loading: false, user: user, courses: courses);
      } catch (e) {
        yield state.copyWith(
          loading: false,
          error: 'Erro ao buscar informações!',
        );
        print(e);
      }
    }
  }
}

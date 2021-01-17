import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:traineeit/services/course_service.dart';
import 'course_detail_event.dart';
import 'course_detail_state.dart';

class CourseDetailBloc extends Bloc<CourseDetailEvent, CourseDetailState> {
  final CourseService courseService;

  CourseDetailBloc({@required this.courseService}) : super(CourseDetailState());

  @override
  Stream<CourseDetailState> mapEventToState(CourseDetailEvent event) async* {
    if (event is InitCourse) {
      yield state.copyWith(loading: true);
      try {
        final course = await courseService.getByIdRead(event.id);
        yield state.copyWith(
          loading: false,
          course: course,
        );
      } catch (e) {
        print(e);
        yield state.copyWith(
            loading: false, error: 'Algo deu errado com os dados do curso');
      }
    }
  }
}

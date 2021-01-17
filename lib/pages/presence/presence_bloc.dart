import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:traineeit/pages/presence/presence_event.dart';
import 'package:traineeit/pages/presence/presence_state.dart';
import 'package:traineeit/services/course_service.dart';

class PresenceBloc extends Bloc<PresenceEvent, PresenceState> {
  final CourseService courseService;

  PresenceBloc({@required this.courseService}) : super(PresenceState());

  @override
  Stream<PresenceState> mapEventToState(PresenceEvent event) async* {
    if (event is InitPresence) {
      yield state.copyWith(loading: true);
      try {
        // final course = await courseService.getCourses()
        yield state.copyWith(loading: false);
      } catch (e) {
        yield state.copyWith(
          loading: false,
          error: 'Oops, algo deu errado ao buscar as informações!',
        );
        print(e);
      }
    }
  }
}

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
        final course = await courseService.getById(event.id);
        yield state.copyWith(loading: false, course: course);
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

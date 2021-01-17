import 'package:bloc/bloc.dart';

import 'register_course_event.dart';
import 'register_course_state.dart';

class RegisterCourseBloc extends Bloc<RegisterCourseEvent, RegisterCourseState> {
  RegisterCourseBloc() : super(RegisterCourseState());

  @override
  Stream<RegisterCourseState> mapEventToState(
      RegisterCourseEvent event) async* {
    if (event is GoogleLogin) {
      yield state.copyWith(loading: true);
      try {} catch (e) {
        print(e);
        // TODO: Tratar tipos de erro
        yield state.copyWith(
            loading: false, errorMessage: 'Tivemos um problema');
      }
    }
  }
}

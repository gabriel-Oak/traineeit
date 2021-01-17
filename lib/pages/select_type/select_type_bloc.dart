import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';
import 'package:traineeit/services/login_service.dart';
import 'package:traineeit/utils/LocalUser.dart';

import 'select_type_state.dart';
import 'select_type_event.dart';

class SelectTypeBloc extends Bloc<SelectTypeEvent, SelectTypeState> {
  final LoginService loginService;
  final LocalUser localUser;

  SelectTypeBloc({
    @required this.loginService,
    @required this.localUser,
}) : super(SelectTypeState());

  @override
  Stream<SelectTypeState> mapEventToState(SelectTypeEvent event) async* {
    if (event is SelectType) {
      yield state.copyWith(type: event.type);
    }

    if (event is Register) {
      yield state.copyWith(loading: true);
      try {
        final user = await loginService.create(event.user);
        localUser.user = user;
        yield state.copyWith(loading: false, success: true, user: user);
      } catch (e) {
        print(e);
        print((e as DioError).response.data);
        yield state.copyWith(
            loading: false, errorMessage: 'Tivemos um problema');
      }
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import 'google_singin.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GoogleSingin googleSingin;

  LoginBloc({
    @required this.googleSingin,
  }) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is GoogleLogin) {
      final user = await googleSingin.login();
    }
  }
}

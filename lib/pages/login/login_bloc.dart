import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/google_singin.dart';
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
      yield state.copyWith(loading: true);
      try {
        final user = await googleSingin.login();
        yield state.copyWith(loading: false, success: true, user: user);
      } catch (e) {
        print(e);
        // TODO: Tratar tipos de erro
        yield state.copyWith(
            loading: false, errorMessage: 'Tivemos um problema');
      }
    }
  }
}

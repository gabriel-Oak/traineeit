import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:traineeit/models/user_model.dart';
import 'package:traineeit/services/login_service.dart';
import 'package:traineeit/utils/LocalUser.dart';
import 'package:traineeit/utils/LocalUser.dart';

import '../../services/google_singin.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final GoogleSingin googleSingin;
  final LoginService loginService;
  final LocalUser localUser;

  LoginBloc({
    @required this.googleSingin,
    @required this.loginService,
    @required this.localUser,
  }) : super(LoginState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is GoogleLogin) {
      yield state.copyWith(loading: true);
      try {
        final googleUser = await googleSingin.login();
        UserModel user = await loginService.login(googleUser.googleId);
        if (user == null) {
          yield state.copyWith(loading: false, selectType: true, user: googleUser);
        } else {
          localUser.user = user;
          yield state.copyWith(loading: false, success: true, user: user);
        }
      } catch (e) {
        print(e);
        // TODO: Tratar tipos de erro
        yield state.copyWith(
            loading: false, errorMessage: 'Tivemos um problema');
      }
    }
  }
}

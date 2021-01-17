import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/services/login_service.dart';
import 'package:traineeit/utils/LocalUser.dart';

import '../../services/google_singin.dart';
import 'login_bloc.dart';
import 'login_content.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (_) => LoginBloc(
          googleSingin: GoogleSingin(),
          loginService: LoginService(),
          localUser: LocalUser()
        ),
        child: LoginContent(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/pages/login/login_event.dart';

import 'login_bloc.dart';
import 'login_state.dart';

class LoginContent extends StatelessWidget {
  _makeLogin(context) {
    BlocProvider.of<LoginBloc>(context).add(GoogleLogin());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
        return Column(
          children: [
            Placeholder(fallbackWidth: 120, fallbackHeight: 50),
            Text('BEM-VINDO!'),
            Text('Para iniciarmos sua jornada, informe qual perfil de usuário deseja escolher.'),
          ],
        );
      },
    );
  }
}

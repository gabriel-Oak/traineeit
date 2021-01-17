import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'google_singin.dart';
import 'login_bloc.dart';
import 'login_content.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<LoginBloc>(
        create: (_) => LoginBloc(
          googleSingin: GoogleSingin()
        ),
        child: LoginContent(),
      ),
    );
  }
}

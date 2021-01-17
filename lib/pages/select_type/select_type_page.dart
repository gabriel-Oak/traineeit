import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/models/user_model.dart';

import 'select_type_bloc.dart';
import 'select_type_content.dart';

class SelectTypePage extends StatelessWidget {
  final UserModel user;

  SelectTypePage({@required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SelectTypeBloc>(
        create: (_) => SelectTypeBloc(),
        child: SelectTypeContent(user: user),
      ),
    );
  }
}

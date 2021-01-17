import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'select_type_bloc.dart';
import 'select_type_content.dart';

class SelectTypePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<SelectTypeBloc>(
        create: (_) => SelectTypeBloc(),
        child: SelectTypeContent(),
      ),
    );
  }
}

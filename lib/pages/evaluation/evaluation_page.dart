import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/pages/evaluation/evaluation_bloc.dart';
import 'package:traineeit/services/google_singin.dart';

import 'evaluation_content.dart';

class EvaluationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(googleSignIn: GoogleSingin()),
      body: BlocProvider<EvaluationBloc>(
        create: (_) => EvaluationBloc(),
        child: EvaluationContent(),
      ),
    );
  }
}

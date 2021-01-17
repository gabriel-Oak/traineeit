import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/pages/register_course/register_course_content.dart';
import 'package:traineeit/services/google_singin.dart';

import 'register_course_bloc.dart';

class RegisterCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(googleSignIn: GoogleSingin()),
      body: BlocProvider<RegisterCourseBloc>(
        create: (_) => RegisterCourseBloc(),
        child: RegisterCourseContent(),
      ),
    );
  }
}

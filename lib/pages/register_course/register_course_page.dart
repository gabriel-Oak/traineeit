import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traineeit/pages/register_course/register_course_content.dart';

import 'register_course_bloc.dart';

class RegisterCoursePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: SvgPicture.asset('assets/images/logo.svg',
              semanticsLabel: 'Acme Logo'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocProvider<RegisterCourseBloc>(
        create: (_) => RegisterCourseBloc(),
        child: RegisterCourseContent(),
      ),
    );
  }
}

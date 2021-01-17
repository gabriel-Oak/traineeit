import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/pages/home/home_bloc.dart';
import 'package:traineeit/pages/home/home_content.dart';
import 'package:traineeit/pages/home/home_event.dart';
import 'package:traineeit/services/course_service.dart';
import 'package:traineeit/services/user_service.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (_) => HomeBloc(
        userService: UserService(),
        courseService: CourseService(),
      )..add(InitHome()),
      child: HomeContent(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/services/course_service.dart';
import 'package:traineeit/utils/LocalUser.dart';
import 'course_detail_bloc.dart';
import 'package:traineeit/pages/course_detail/course_detail_content.dart';
import 'package:traineeit/services/google_singin.dart';
import 'course_detail_event.dart';

class CourseDetailPage extends StatelessWidget {
  final int id;

  CourseDetailPage({@required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CourseDetailBloc>(
      create: (context) => CourseDetailBloc(
        courseService: CourseService(),
        localUser: LocalUser(),
      )..add(InitCourse(id: id)),
      child: Scaffold(
        appBar: SharedAppBar(googleSignIn: GoogleSingin()),
        body: CourseDetailContent(),
      ),
    );
  }
}

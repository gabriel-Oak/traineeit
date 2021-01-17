import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/pages/presence/presence_bloc.dart';
import 'package:traineeit/pages/presence/presence_content.dart';
import 'package:traineeit/pages/presence/presence_event.dart';
import 'package:traineeit/services/course_service.dart';

class PresencePage extends StatelessWidget {
  final int id;

  PresencePage({@required this.id});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<PresenceBloc>(
      create: (context) => PresenceBloc(
        courseService: CourseService(),
      )..add(InitPresence(id: id)),
      child: Scaffold(body: PresenceContent()),
    );
  }
}

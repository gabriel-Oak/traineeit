import 'package:flutter/cupertino.dart';

abstract class CourseDetailEvent {}

class InitCourse extends CourseDetailEvent {
  final int id;
  InitCourse({@required this.id});
}

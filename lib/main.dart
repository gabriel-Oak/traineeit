import 'package:flutter/material.dart';
import 'package:traineeit/pages/course_detail/course_detail_page.dart';
import 'package:traineeit/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trainee It',
      theme: theme,
      home: CourseDetailPage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/services/google_singin.dart';
import 'course_detail_registered_content.dart';

class CourseDetailRegisteredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(googleSignIn: GoogleSingin()),
      body: CourseDetailRegisteredContent(),
    );
  }
}

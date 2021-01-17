import 'package:flutter/material.dart';
import 'package:traineeit/components/shared_appbar.dart';

import 'package:traineeit/pages/course_detail/course_detail_content.dart';
import 'package:traineeit/services/google_singin.dart';

class CourseDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(googleSignIn: GoogleSingin()),
      body: CourseDetailContent(),
    );
  }
}

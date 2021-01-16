import 'package:flutter/material.dart';
import 'package:traineeit/components/course_cover.dart';

class HomeCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Meus Cursos'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 8, bottom: 8, left: 16),
            child: Row(
              children: [
                CourseCover(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

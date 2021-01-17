import 'package:flutter/material.dart';
import 'package:traineeit/components/course_cover.dart';

class HomeCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              'Olá, Bastião',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 36),
            child: Text(
              'Meus Cursos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 16, bottom: 8, left: 20, right: 10),
            child: Row(
              children: [
                CourseCover(),
                CourseCover(),
                CourseCover(),
                CourseCover(),
                CourseCover(),
                CourseCover(),
                CourseCover(),
                CourseCover(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

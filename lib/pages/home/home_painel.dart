import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:traineeit/pages/home/home_new_courses.dart';

class HomePainel extends StatelessWidget {
  final borderRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );
  final List<CourseReadModel> courses;

  HomePainel({this.courses = const []});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Color(0xFFF9F9F9),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, bottom: 10),
              width: 40,
              height: 6,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Cursos disponiveis',
                  style: TextStyle(
                    fontSize: 20,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            HomeNewCourses(courses: courses),
          ],
        ),
      ),
    );
  }
}

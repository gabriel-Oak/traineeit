import 'package:flutter/material.dart';
import 'package:traineeit/models/user_course_model.dart';
import 'package:traineeit/utils/course_color.dart';

class CourseCover extends StatelessWidget {
  final UserCourseModel course;
  final bool canSeeSubs;

  CourseCover({@required this.course, @required this.canSeeSubs});

  @override
  Widget build(BuildContext context) {
    final Color color = kCourseColors.firstWhere(
      (e) => e['id'] == course.id,
      orElse: () => {'color': Colors.teal},
    )['color'];

    return Container(
      height: 180,
      width: 150,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              course.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 8),
            Text(
              course.description,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.left,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '${course.classes.length} aulas',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  '${course.totalHours}h',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(4)),
              child: LinearProgressIndicator(
                value: 0.5,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                backgroundColor: Color(0x30FFFFFF),
                minHeight: 4,
              ),
            ),
            SizedBox(height: 16),
            canSeeSubs
                ? Text(
                    '${15} Inscrições',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.left,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

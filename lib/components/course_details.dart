import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';

class CourseDetails extends StatelessWidget {
  final CourseReadModel course;

  CourseDetails({@required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            course.name,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black54,
              decoration: TextDecoration.none,
            ),
          ),
          SizedBox(height: 8),
          Text(
            course.description,
            style: TextStyle(
              fontSize: 10,
              decoration: TextDecoration.none,
              color: Colors.black54,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 8),
          Row(
            children: [
              _mountChip('${course.classes.length} aulas'),
              SizedBox(width: 8),
              _mountChip('${course.totalHours}h'),
            ],
          )
        ],
      ),
    );
  }

  Widget _mountChip(String text) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 12,
          ),
        ),
      );
}

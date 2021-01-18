import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';

class CourseDetail extends StatelessWidget {
  final CourseReadModel course;

  CourseDetail({@required this.course});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.name,
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).primaryColor),
            ),
            Text.rich(
              TextSpan(
                text: 'Criado por: ',
                style: TextStyle(fontSize: 10, letterSpacing: .4),
                children: [
                  TextSpan(
                      text: 'Gabriel',
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w500)),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            Chip(
                backgroundColor: Color.fromRGBO(0, 122, 123, 0.4),
                label: Text('${course.classes.length} aulas',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500))),
            SizedBox(width: 16),
            Chip(
              backgroundColor: Color.fromRGBO(0, 122, 123, 0.4),
              label: Text(
                '${course.totalHours}h',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

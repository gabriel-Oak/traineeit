import 'package:flutter/material.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/pages/course_detail/widget/alert_enroll.dart';
import 'package:traineeit/pages/course_detail/widget/class_item.dart';
import 'package:traineeit/pages/course_detail/widget/companies.dart';
import 'package:traineeit/pages/course_detail/widget/dialog_class.dart';
import 'package:traineeit/pages/course_detail/widget/enroll_button.dart';
import 'file:///C:/Users/Gabri/Documents/Projects/traineeit/lib/components/header_course.dart';

class CourseDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding:
              const EdgeInsets.only(bottom: 80, left: 16, right: 16, top: 0),
          child: Column(
            children: [
              ArrowBackButton(),
              CourseDetail(),
              Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget risus libero. Vestibulum fermentum nibh ut enim porta, a consectetur lectus dapibus.',
                      style:
                          TextStyle(color: Color(0xff555555), fontSize: 14))),
              Companies(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Cronograma de aulas:',
                    style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 14,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.2),
                  ),
                ],
              ),
              ClassItem(text: 'aula 1 | Lorem ipsum dolor', onTap: _showDialog),
              ClassItem(text: 'aula 2 | Lorem ipsum dolor', onTap: _showDialog),
              ClassItem(text: 'aula 3 | Lorem ipsum dolor', onTap: _showDialog),
            ],
          ),
        ),
        EnrollButton(onTap: _makeEnroll),
      ],
    );
  }

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      child: DialogClass(),
    );
  }

  _makeEnroll(BuildContext context) {
    showDialog(
      context: context,
      child: AlertEnroll(),
    );
  }
}

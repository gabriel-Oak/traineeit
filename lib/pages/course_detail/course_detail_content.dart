import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/components/header_course.dart';
import 'package:traineeit/pages/course_detail/widget/alert_enroll.dart';
import 'package:traineeit/pages/course_detail/widget/class_item.dart';
import 'package:traineeit/pages/course_detail/widget/companies.dart';
import 'package:traineeit/pages/course_detail/widget/dialog_class.dart';
import 'package:traineeit/pages/course_detail/widget/enroll_button.dart';
import 'course_detail_bloc.dart';
import 'course_detail_state.dart';

class CourseDetailContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CourseDetailBloc, CourseDetailState>(
      builder: (context, state) {
        return Stack(
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.only(
                bottom: 80,
                left: 16,
                right: 16,
                top: 0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ArrowBackButton(),
                  state.course != null
                      ? CourseDetail(course: state.course)
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Text(
                      state.course?.description ?? 'Carregando ...',
                      style: TextStyle(
                        color: Color(0xff555555),
                        fontSize: 14,
                      ),
                    ),
                  ),
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
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: state.course != null
                        ? state.course.classes
                            .map(
                              (e) => ClassItem(
                                text: e.name,
                                onTap: _showDialog,
                              ),
                            )
                            .toList()
                        : [],
                  )
                ],
              ),
            ),
            EnrollButton(onTap: _makeEnroll),
          ],
        );
      },
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

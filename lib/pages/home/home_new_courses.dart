import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traineeit/models/course_read_model.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traineeit/pages/course_detail/course_detail_page.dart';

class HomeNewCourses extends StatelessWidget {
  final List<CourseReadModel> courses;

  HomeNewCourses({@required this.courses});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: courses
            .map(
              (e) => Container(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e.name,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black54,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                e.description,
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
                                  _mountChip('${e.classes.length} aulas'),
                                  SizedBox(width: 8),
                                  _mountChip('${e.totalHours}h'),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 16),
                        FlatButton(
                          color: Theme.of(context).primaryColor,
                          textColor: Colors.white,
                          child: Text(
                            'Detalhes',
                            style: TextStyle(fontSize: 16),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.bottomToTop,
                                child: CourseDetailPage(),
                              ),
                            );
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        )
                      ],
                    ),
                    Divider(height: 40),
                  ],
                ),
              ),
            )
            .toList(),
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

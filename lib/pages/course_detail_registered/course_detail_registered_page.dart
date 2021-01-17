import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'course_detail_registered_content.dart';

class CourseDetailRegisteredPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 16),
          child: SvgPicture.asset('assets/images/logo.svg',
              semanticsLabel: 'Acme Logo'),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {},
          ),
        ],
      ),
      body: CourseDetailRegisteredContent(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:traineeit/pages/course_detail/course_detail_content.dart';

class CourseDetailPage extends StatelessWidget {
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
      body: CourseDetailContent(),
    );
  }
}

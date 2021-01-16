import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:traineeit/pages/home/home_courses.dart';
import 'package:traineeit/pages/home/home_painel.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: 100,
      controller: PanelController(),
      body: Scaffold(
        appBar: AppBar(
          leading: Container(
            padding: EdgeInsets.only(left: 16),
            child: Image.asset('assets/images/logo.png'),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.logout),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HomeCourses(),
            ],
          ),
        ),
        backgroundColor: Colors.grey[200],
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      panel: HomePainel(),
    );
  }
}

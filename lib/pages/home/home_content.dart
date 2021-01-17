import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:traineeit/pages/home/home_courses.dart';
import 'package:traineeit/pages/home/home_painel.dart';

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      minHeight: 340,
      maxHeight: MediaQuery.of(context).size.height,
      controller: PanelController(),
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            appBar: AppBar(
              leading: Container(
                padding: EdgeInsets.only(left: 16),
                child: Image.asset('assets/images/logo.png'),
              ),
              actions: [
                FlatButton(
                  onPressed: () {},
                  child: Row(
                    children: [
                      Text(
                        'Logout',
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(width: 6),
                      Icon(
                        Icons.logout,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            body: SingleChildScrollView(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  HomeCourses(),
                ],
              ),
            ),
            backgroundColor: Colors.transparent,
          ),
        ],
      ),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      panel: HomePainel(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:traineeit/components/course_cover.dart';

class HomeCourses extends StatelessWidget {
  final List<dynamic> myCourses;
  final bool canSeeSubs;
  final bool canCreate;

  HomeCourses({
    @required this.myCourses,
    @required this.canSeeSubs,
    @required this.canCreate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20, top: 36),
            child: Text(
              'Meus Cursos',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 16, bottom: 8, left: 20, right: 10),
            child: Row(
              children: [
                canCreate
                    ? Container(
                        height: 180,
                        width: 150,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: InkWell(
                          child: Column(
                            children: [
                              SizedBox(height: 16),
                              Text(
                                'Criar Curso',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              SizedBox(height: 16),
                              Icon(
                                Icons.add,
                                color: Colors.white,
                                size: 60,
                              ),
                            ],
                          ),
                          // TODO: dar push pra tela de cadastro curso
                          onTap: () {},
                        ),
                      )
                    : Container(),
                ...myCourses
                    .map((e) => CourseCover(course: e, canSeeSubs: canSeeSubs))
                    .toList()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

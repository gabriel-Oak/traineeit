import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traineeit/components/course_cover.dart';
import 'package:traineeit/pages/register_course/register_course_page.dart';

class HomeCourses extends StatelessWidget {
  final List<dynamic> myCourses;
  final bool canSeeSubs;
  final bool canCreate;
  final bool canAddLogo;
  final String type;


  HomeCourses({
    @required this.myCourses,
    @required this.canSeeSubs,
    @required this.canCreate,
    @required this.canAddLogo,
    @required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          canAddLogo
              ? Padding(
                  padding: const EdgeInsets.only(top: 16, left: 16),
                  child: Chip(
                      label: Text('Adicionar logo',
                          style: TextStyle(color: Colors.white)),
                      backgroundColor: Color(0xff007A7B)),
                )
              : Container(),
          Container(
            margin: EdgeInsets.only(left: 20, top: 16),
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
                        height: 200,
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
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                child: RegisterCoursePage(),
                              ),
                            );
                          },
                        ),
                      )
                    : Container(),
                myCourses.length == 0 && ['Aluno', 'Empresa'].contains(type)
                    ? Container(
                        height: 200,
                        width: 150,
                        margin: EdgeInsets.only(right: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Theme.of(context).primaryColor,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            'Você ainda não está acompanhando nenhum curso',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
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

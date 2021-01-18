import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/pages/evaluation/evaluation_page.dart';
import 'package:traineeit/pages/presence/presence_page.dart';
import 'package:traineeit/utils/LocalUser.dart';
import 'widget/lesson.dart';

class CourseDetailRegisteredContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          padding:
              const EdgeInsets.only(bottom: 80, left: 16, right: 16, top: 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ArrowBackButton(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Power BI',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Criado por: ',
                          style: TextStyle(fontSize: 10, letterSpacing: .4),
                          children: [
                            TextSpan(
                                text: 'Marina',
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500)),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Chip(
                          backgroundColor: Color.fromRGBO(0, 122, 123, 0.4),
                          label: Text('4 aulas',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500))),
                      SizedBox(width: 16),
                      Chip(
                        backgroundColor: Color.fromRGBO(0, 122, 123, 0.4),
                        label: Text(
                          '20h',
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
              ),
              LocalUser().user.type == 'Aluno'
                  ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      'Link para Instrutor',
                      style: TextStyle(
                          color: Color(0xff555555),
                          fontWeight: FontWeight.w900,
                          letterSpacing: .8),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius:
                          BorderRadius.all(Radius.circular(10))),
                      child: TextFormField(
                        minLines: 2,
                        maxLines: 4,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(16),
                          hintText:
                          'Cole aqui o link para acesso do seu instrutor',
                          border: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : Container(),
              LocalUser().user.type == 'Professor'
                  ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      width: 140,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: EvaluationPage(),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xff007A7B),
                        elevation: 0,
                        child: Text(
                          'Pauta',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 140,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            PageTransition(
                              type: PageTransitionType.fade,
                              child: PresencePage(id: 1),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Color(0xff007A7B),
                        elevation: 0,
                        child: Text(
                          'Frequencia',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
                  : Container(),
              LocalUser().user.type == 'Empresa'
                  ? Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 16, horizontal: 8),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          child: PresencePage(id: 1),
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Color(0xff007A7B),
                    elevation: 0,
                    child: Text(
                      'Frequencia',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              )
                  : Container(),
              Lesson(
                title: 'aula 1 | 17/01/2021 às 15:00',
                name: '1 - Inserção de dados através de Planilha Excel ou CSV',
                link: 'meet.google.com/iwh-fafy-sqw',
              ),
              Lesson(
                title: 'aula 2 | 18/01/2021 às 15:00',
                name:
                    '2 - Conhecimento de Gráficos, Rótulos de Sistema, Hiperlink entre páginas',
                link: 'meet.google.com/iwh-fafy-sqw',
              ),
              Lesson(
                title: 'aula 3 | 19/01/2021 às 15:00',
                name: '3 - Organização de dados ETL;',
                link: 'meet.google.com/iwh-fafy-sqw',
              ),
              Lesson(
                title: 'aula 3 | 20/01/2021 às 15:00',
                name: '4 - Tratamento de Layout e de dados com o Power Query',
                link: 'meet.google.com/iwh-fafy-sqw',
              ),
            ],
          ),
        ),
      ],
    );
  }
}

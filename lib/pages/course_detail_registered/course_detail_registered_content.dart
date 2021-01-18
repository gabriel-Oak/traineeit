import 'package:flutter/material.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/components/header_course.dart';
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
                        'Design UI/UX ',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Theme.of(context).primaryColor),
                      ),
                      Text.rich(
                        TextSpan(
                          text: 'Criado por: ',
                          style: TextStyle(fontSize: 10, letterSpacing: .4),
                          children: [
                            TextSpan(
                                text: 'Gabriel',
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
                          label: Text('12 aulas',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500))),
                      SizedBox(width: 16),
                      Chip(
                        backgroundColor: Color.fromRGBO(0, 122, 123, 0.4),
                        label: Text(
                          '30h',
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Link para Instrutor',
                  style: TextStyle(
                      color: Color(0xff555555),
                      fontWeight: FontWeight.w900,
                      letterSpacing: .8),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: TextFormField(
                  minLines: 2,
                  maxLines: 4,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(16),
                    hintText: 'Cole aqui o link para acesso do seu instrutor',
                    border: InputBorder.none,
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    errorBorder: InputBorder.none,
                    focusedErrorBorder: InputBorder.none,
                  ),
                ),
              ),
              Lesson(),
              Lesson(),
              Lesson(),
              Lesson(),
              Lesson(),
            ],
          ),
        ),
      ],
    );
  }
}

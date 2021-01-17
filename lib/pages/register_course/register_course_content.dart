import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/pages/register_course/register_course_bloc.dart';
import 'package:traineeit/pages/register_course/register_course_state.dart';
import 'package:traineeit/pages/register_course/widget/dialog_lesson.dart';

class RegisterCourseContent extends StatelessWidget {

  _showDialog(BuildContext context) {
    showDialog(
      context: context,
      child: DialogLesson(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCourseBloc, RegisterCourseState>(
      listener: (context, state) {},
      child: BlocBuilder<RegisterCourseBloc, RegisterCourseState>(
          builder: (context, state) {
        return SingleChildScrollView(
            padding:
                const EdgeInsets.only(bottom: 80, left: 16, right: 16, top: 0),
            child: Column(children: [
              ArrowBackButton(),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Nome do curso',
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Total de horas',
                ),
              ),
              SizedBox(height: 16),
              TextFormField(
                minLines: 2,
                maxLines: 6,
                decoration: InputDecoration(
                  filled: true,
                  labelText: 'Descrição do Atendimento',
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    onPressed: () => Navigator.pop(context),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.transparent,
                    child: Text(
                      'Cancelar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Theme.of(context).primaryColor,
                    elevation: 0,
                    child: Text(
                      'Salvar',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                      onPressed: () => _showDialog(context),
                      child: Text(
                        'Adicionar aula +',
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14),
                      ))
                ],
              )
            ]));
      }),
    );
  }
}

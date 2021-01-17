import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/components/header_course.dart';
import 'package:traineeit/pages/evaluation/widget/expansion_tile_evaluation.dart';

import 'evaluation_bloc.dart';
import 'evaluation_state.dart';

class EvaluationContent extends StatelessWidget {
  Widget item(context) => Row(
        children: [
          Text('Aula 01', style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500
          ),),
          SizedBox(width: 8),
          Container(
            width: 56,
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                border: InputBorder.none,
                disabledBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                focusedErrorBorder: InputBorder.none,
              ),
              style: TextStyle(
                color: Colors.grey.shade700
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<EvaluationBloc, EvaluationState>(
      listener: (context, state) {},
      child: BlocBuilder<EvaluationBloc, EvaluationState>(
          builder: (context, state) {
        return SingleChildScrollView(
            padding:
                const EdgeInsets.only(bottom: 80, left: 16, right: 16, top: 0),
            child: Column(children: [
              ArrowBackButton(),
              CourseDetail(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
              ExpansionTileEvaluation(),
            ]));
      }),
    );
  }
}

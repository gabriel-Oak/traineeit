import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'item_evaluation.dart';

class ExpansionTileEvaluation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Montserrat',
        cursorColor: primaryColor,
      ),
      child: ExpansionTile(
        title: Text('Nome e Sobrenome'),
        subtitle: Text('email@gmail.com'),
        children: [
          Column(
            children: [
              Text('Avaliações'),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemEvaluation(),
                  ItemEvaluation(),
                  ItemEvaluation(),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemEvaluation(),
                  ItemEvaluation(),
                  ItemEvaluation(),
                ],
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemEvaluation(),
                  ItemEvaluation(),
                  ItemEvaluation(),
                ],
              ),
              SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Link do aluno',
                  filled: true,
                  border: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                ),
                style: TextStyle(color: Colors.grey.shade700),
              ),
              SizedBox(height: 16),
            ],
          )
        ],
      ),
    );
  }
}

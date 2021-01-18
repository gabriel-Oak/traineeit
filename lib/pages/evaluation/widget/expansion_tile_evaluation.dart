import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'item_evaluation.dart';

class ExpansionTileEvaluation extends StatelessWidget {
  final String name;
  final String email;

  ExpansionTileEvaluation({
    @required this.name,
    @required this.email,
});

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
        title: Text(name),
        subtitle: Text(email),
        children: [
          Column(
            children: [
              Text('Avaliações'),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ItemEvaluation(index: 1),
                  ItemEvaluation(index: 2),
                  ItemEvaluation(index: 3),
                ],
              ),
              SizedBox(height: 16),
              TextFormField(
                initialValue: 'https://github.com/loremare',
                enabled: false,
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

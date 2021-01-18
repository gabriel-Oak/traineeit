import 'package:flutter/material.dart';

class ItemEvaluation extends StatelessWidget {
  final int index;

  ItemEvaluation({@required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Aula 0$index',
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 12,
              fontWeight: FontWeight.w500),
        ),
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
            style: TextStyle(color: Colors.grey.shade700),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

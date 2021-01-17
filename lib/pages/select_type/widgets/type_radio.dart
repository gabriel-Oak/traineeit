import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../select_type_bloc.dart';
import '../select_type_event.dart';

class TypeRadio extends StatelessWidget {
  final String groupValue;
  final String value;
  final String text;

  TypeRadio({
    @required this.groupValue,
    @required this.value,
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(
            value: value,
            groupValue: groupValue,
            activeColor: Theme.of(context).primaryColor,
            onChanged: (v) => BlocProvider.of<SelectTypeBloc>(context)
                .add(SelectType(type: v))),
        Text(text,
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ))
      ],
    );
  }
}

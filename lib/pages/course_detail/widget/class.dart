import 'package:flutter/material.dart';

class ClassItem extends StatelessWidget {
  final String text;

  ClassItem({
    @required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(text,
                style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    decoration: TextDecoration.underline)),
          ],
        ));
  }
}

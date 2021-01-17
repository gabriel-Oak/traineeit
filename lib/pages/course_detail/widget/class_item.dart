import 'package:flutter/material.dart';

class ClassItem extends StatelessWidget {
  final String text;
  final Function(BuildContext context) onTap;

  ClassItem({
    @required this.text,
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap(context),
      child: Container(
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
          )),
    );
  }
}

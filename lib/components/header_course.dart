import 'package:flutter/material.dart';

class CourseDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Design UX/UI',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Theme.of(context).primaryColor),
              ),
              Text.rich(TextSpan(text: 'Criado por: ',
                  style: TextStyle(
                    fontSize: 10,
                    letterSpacing: .4
                  ),
                  children: [
                TextSpan(text: 'Gabriel', style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500
                )),
              ]))
            ]),
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
                label: Text('30h',
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                        fontWeight: FontWeight.w500))),
          ],
        )
      ],
    );
  }
}

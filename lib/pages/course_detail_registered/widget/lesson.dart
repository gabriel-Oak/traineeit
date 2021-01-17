import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(
          color: Colors.grey.shade300,
          width: 1
        ))
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text('aula 1  |  22/11/2020 às 15:00',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 12)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text('Lorem ipsum dolor',
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget risus libero. ',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontSize: 12)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Avaliação | 8'),
                RaisedButton(
                  onPressed: () {},
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  color: Theme.of(context).primaryColor,
                  elevation: 0,
                  child: Text(
                    'Link da aula',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

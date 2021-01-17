import 'dart:ui';

import 'package:flutter/material.dart';

class HomeNewCourses extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 20),
      margin: EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Design UX/UI EXTRA LONGO ULTRA LARGO',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                              decoration: TextDecoration.none,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            'Lordolor sit amet, consectetur ',
                            style: TextStyle(
                              fontSize: 10,
                              decoration: TextDecoration.none,
                              color: Colors.black54,
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 8),
                          Row(
                            children: [
                              _mountChip('12 aulas'),
                              SizedBox(width: 8),
                              _mountChip('30h'),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 16),
                    FlatButton(
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text(
                        'Detalhes',
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    )
                  ],
                ),
                Divider(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _mountChip(String text) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: Colors.blue[100],
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 12,
          ),
        ),
      );
}

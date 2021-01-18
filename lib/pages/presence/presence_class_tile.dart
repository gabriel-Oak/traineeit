import 'package:faker/faker.dart';
import 'package:flutter/material.dart';

class PresenceClassTile extends StatelessWidget {
  final int index;
  final String titulo;
  final String data;

  PresenceClassTile({
    @required this.index,
    @required this.titulo,
    @required this.data,
  });

  final user = [
    {
      'name': faker.person.name(),
      'email': faker.internet.email(),
    },
    {
      'name': faker.person.name(),
      'email': faker.internet.email(),
    },
    {
      'name': faker.person.name(),
      'email': faker.internet.email(),
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.black12, width: 1),
          top: BorderSide(color: Colors.black12, width: 1),
        ),
      ),
      child: ExpansionTile(
        childrenPadding: EdgeInsets.all(16),
        tilePadding: EdgeInsets.symmetric(vertical: 18),
        title: ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            radius: 24,
            child: Text(
              '0$index',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          title: Text(
            '$titulo | $data',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        children: [
          Column(
            children: [
              ListTile(
                title: Text(
                  user[0]['name'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Container(
                  child: Radio(
                    activeColor: Theme.of(context).primaryColor,
                    value: true,
                    groupValue: true,
                    onChanged: (_) {},
                  ),
                ),
                subtitle: Text(
                    user[0]['email'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  user[1]['name'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Container(
                  child: Radio(
                    activeColor: Theme.of(context).primaryColor,
                    value: true,
                    groupValue: true,
                    onChanged: (_) {},
                  ),
                ),
                subtitle: Text(
                  user[1]['email'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  user[2]['name'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                trailing: Container(
                  child: Radio(
                    activeColor: Theme.of(context).primaryColor,
                    value: true,
                    groupValue: true,
                    onChanged: (_) {},
                  ),
                ),
                subtitle: Text(
                  user[2]['email'],
                  style: TextStyle(
                    color: Theme.of(context).primaryColor,
                    fontSize: 9,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ],

          )
        ],
      ),
    );
  }
}

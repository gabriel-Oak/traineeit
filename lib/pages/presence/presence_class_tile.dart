import 'package:flutter/material.dart';

class PresenceClassTile extends StatelessWidget {
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
              '0X',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          title: Text(
            'Aula X | 22-11-2020 às 15:00',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          subtitle: Text(
            'Lorem ipsum dolor',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
        children: List.filled(
          20,
          ListTile(
            title: Text(
              'Nome e Sobrenome',
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
              'email@gmail.com',
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 9,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
                width: 60,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_ios, size: 12, color: Theme.of(context).primaryColor),
                      Padding(
                          padding: const EdgeInsets.only(bottom: 4.0),
                          child: Text('voltar', style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor)))
                    ])),
          ],
        ),
      ),
    );
  }
}

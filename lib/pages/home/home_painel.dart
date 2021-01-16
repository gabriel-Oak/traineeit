import 'package:flutter/material.dart';

class HomePainel extends StatelessWidget {
  final borderRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: borderRadius,
          color: Color(0xFFF9F9F9),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        height: 130,
        width: MediaQuery.of(context).size.width,
        child: Container(),
      ),
    );
  }
}

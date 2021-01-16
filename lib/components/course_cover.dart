import 'package:flutter/material.dart';

class CourseCover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 140,
      margin: EdgeInsets.only(right: 16),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Column(
          children: [
            Text('Design UX/UI'),
            SizedBox(height: 16),
            Text('Lorem ipsum dolor sit amet, consectetur '),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('12 aulas'),
                Text('30h'),
              ],
            ),
            SizedBox(height: 16),
            LinearProgressIndicator(
              value: 57,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              minHeight: 5,
            ),
          ],
        ),
      ),
    );
  }
}

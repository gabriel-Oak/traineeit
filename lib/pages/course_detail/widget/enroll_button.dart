import 'package:flutter/material.dart';

class EnrollButton extends StatelessWidget {
  final Function(BuildContext context) onTap;

  EnrollButton({
    @required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: RaisedButton(
            onPressed: () => onTap(context),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Theme.of(context).primaryColor,
            child: Text(
              'Matricule-se',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

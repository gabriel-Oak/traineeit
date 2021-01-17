import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Companies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 32.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Text('Acompanhado por:'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset('assets/images/logoipsum.svg',
                  semanticsLabel: 'Acme Logo'),
              SvgPicture.asset('assets/images/logoipsum-3.svg',
                  semanticsLabel: 'Acme Logo'),
            ],
          ),
        ],
      ),
    );
  }
}

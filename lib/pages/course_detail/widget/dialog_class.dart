import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DialogClass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: MediaQuery.of(context).size.height / 1.8,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 16, top: 8.0),
                        child: Text('aula 1',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 12)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, right: 16),
                        child: InkWell(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset('assets/images/clear.svg',
                              height: 18),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: [
                        Text('Lorem ipsum dolor',
                            style: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w500,
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 32.0, horizontal: 16),
                    child: Text(
                      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget risus libero. Vestibulum fermentum nibh ut enim porta, a consectetur lectus dapibus.  

Lorem ipsum dolor sit amet, consectetur adipiscing elit.

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur eget risus libero. Vestibulum fermentum nibh ut enim porta, a consectetur lectus dapibus.  Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                    ''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, color: Color(0xff555555)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

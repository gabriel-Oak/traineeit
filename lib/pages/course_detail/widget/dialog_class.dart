import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:traineeit/models/class_model.dart';

class DialogClass extends StatelessWidget {
  final ClassModel classModel;

  DialogClass({@required this.classModel});

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
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(),
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
                      child: Text(
                        classModel.name,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: 18,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.w500,
                        ),
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
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff555555)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AlertEnroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Container(
          height: 180,
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 200,
                          child: Text('Deseja confirmar sua matricula?',
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Theme.of(context).primaryColor,
                                  fontWeight: FontWeight.w500)),
                        ),
                        InkWell(
                          onTap: () => Navigator.pop(context),
                          child: SvgPicture.asset('assets/images/clear.svg',
                              height: 18),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlatButton(
                        onPressed: () => Navigator.pop(context),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Colors.transparent,
                        child: Text(
                          'Cancelar',
                          style: TextStyle(
                            fontSize: 18,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      RaisedButton(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        color: Theme.of(context).primaryColor,
                        elevation: 0,
                        child: Text(
                          'Continuar',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
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

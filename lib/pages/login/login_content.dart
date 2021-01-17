import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traineeit/pages/login/login_event.dart';
import 'package:traineeit/pages/select_type/select_type_page.dart';

import 'login_bloc.dart';
import 'login_state.dart';

class LoginContent extends StatelessWidget {
  _makeLogin(context) {
    BlocProvider.of<LoginBloc>(context).add(GoogleLogin());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if(state.success)
          Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop, child: SelectTypePage()));
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/images/logo.svg'),
                  SizedBox(height: 64),
                  Container(
                      child:
                          SvgPicture.asset('assets/images/folder-google-2.svg')),
                  SizedBox(
                    height: 48,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 32),
                    child: Text(
                      'Faça login com sua conta Google',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Theme.of(context).primaryColor,
                          letterSpacing: 2),
                    ),
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: RaisedButton(
                      onPressed: state.loading ? null : () => _makeLogin(context),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      color: Color(0XFF89CFD9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/images/google.svg',
                          ),
                          SizedBox(width: 12),
                          Text(
                            'Google',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 8),
                  Text.rich(TextSpan(
                      text:
                          'Entrando na plataforma você esta concordando com os seguintes ',
                      style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 11),
                      children: [
                        TextSpan(
                            text: 'termos de uso.',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                            ))
                      ]))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';
import 'package:traineeit/models/user_model.dart';
import 'package:traineeit/pages/home/home_page.dart';
import 'package:traineeit/pages/select_type/widgets/type_button_continue.dart';
import 'package:traineeit/pages/select_type/widgets/type_radio.dart';

import 'select_type_bloc.dart';
import 'select_type_state.dart';

class SelectTypeContent extends StatelessWidget {
  final UserModel user;

  SelectTypeContent({@required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SelectTypeBloc, SelectTypeState>(
      listener: (context, state) {
        if (state.success)
          Navigator.pushReplacement(
              context,
              PageTransition(
                  type: PageTransitionType.bottomToTop, child: HomePage()));
      },
      child: BlocBuilder<SelectTypeBloc, SelectTypeState>(
        builder: (context, state) {
          return Stack(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(48.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SvgPicture.asset('assets/images/logo.svg'),
                      SizedBox(height: 48),
                      Text('BEM-VINDO!',
                          style: TextStyle(
                              fontSize: 32,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 2)),
                      SizedBox(height: 16),
                      Text(
                        'Para iniciarmos sua jornada, informe qual perfil de usuário deseja escolher.',
                        style: TextStyle(
                            fontSize: 14,
                            color: Theme.of(context).primaryColor,
                            letterSpacing: 0.2),
                      ),
                      SizedBox(height: 32),
                      TypeRadio(
                          value: 'aluno',
                          text: 'Aluno',
                          groupValue: state.type),
                      SizedBox(height: 8),
                      TypeRadio(
                          value: 'instrutor',
                          text: 'Instrutor',
                          groupValue: state.type),
                      SizedBox(height: 8),
                      TypeRadio(
                          value: 'empresa',
                          text: 'Empresa',
                          groupValue: state.type),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
              TypeButtonContinue(user: user)
            ],
          );
        },
      ),
    );
  }
}

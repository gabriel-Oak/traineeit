import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

import 'select_type_bloc.dart';
import 'select_type_state.dart';

class SelectTypeContent extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectTypeBloc, SelectTypeState>(
      builder: (context, state) {
        return SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(64.0),
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
                      letterSpacing: 2
                    )),
                SizedBox(height: 16),
                Text(
                  'Para iniciarmos sua jornada, informe qual perfil de usuário deseja escolher.',
                  style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Radio(
                        value: false,
                        groupValue: 'type',
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (v) {
                          print(v);
                        }),
                    Text('Aluno',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Radio(
                        value: 'type',
                        groupValue: 'type',
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (v) {
                          print(v);
                        }),
                    Text('Instrutor',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    Radio(
                        value: false,
                        groupValue: 'type',
                        activeColor: Theme.of(context).primaryColor,
                        onChanged: (v) {
                          print(v);
                        }),
                    Text('Empresa',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                        ))
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

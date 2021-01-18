import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/components/back_button.dart';
import 'package:traineeit/components/shared_appbar.dart';
import 'package:traineeit/pages/presence/presence_bloc.dart';
import 'package:traineeit/pages/presence/presence_class_tile.dart';
import 'package:traineeit/pages/presence/presence_state.dart';
import 'package:traineeit/services/google_singin.dart';

class PresenceContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<PresenceBloc, PresenceState>(
      listener: (_, state) {
        if (state.error != null && state.error.isNotEmpty) {
          final snack = SnackBar(
            content: Text(state.error),
            duration: Duration(seconds: 6),
          );
          Scaffold.of(context).showSnackBar(snack);
        }
      },
      listenWhen: (previous, current) => previous.error != current.error,
      child: BlocBuilder<PresenceBloc, PresenceState>(
        builder: (context, state) {
          return Scaffold(
            appBar: SharedAppBar(googleSignIn: GoogleSingin()),
            body: state.loading
                ? Center(child: CircularProgressIndicator())
                : SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ArrowBackButton(),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state.course != null
                                    ? state.course.name
                                    : 'Curso Não Encontrado',
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Theme.of(context).primaryColor,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 6),
                              state.course != null
                                  ? RichText(
                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                    color: Colors.black54,
                                  ),
                                  children: [
                                    TextSpan(text: 'Criado por: '),
                                    TextSpan(
                                      text: 'Marina',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              )
                                  : Container(),
                              SizedBox(height: 6),
                              state.course != null
                                  ? Row(
                                children: [
                                  _mountChip(
                                      '${state.course.classes.length} aulas'),
                                  SizedBox(width: 8),
                                  _mountChip(
                                      '${state.course.totalHours}h'),
                                ],
                              )
                                  : Container(),
                              SizedBox(height: 18),
                              PresenceClassTile(index: 1, titulo: 'Aula 1', data: '18/01/2021 10:00'),
                              PresenceClassTile(index: 2, titulo: 'Aula 2', data: '19/01/2021 10:00'),
                              PresenceClassTile(index: 3, titulo: 'Aula 3', data: '10/01/2021 10:00'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
          );
        },
      ),
    );
  }

  Widget _mountChip(String text) => Container(
        padding: EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 2,
        ),
        decoration: BoxDecoration(
          color: Color(0x77007A7B),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.none,
            fontSize: 12,
          ),
        ),
      );
}

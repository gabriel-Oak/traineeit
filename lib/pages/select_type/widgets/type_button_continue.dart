import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:traineeit/models/user_model.dart';
import 'package:traineeit/pages/select_type/select_type_bloc.dart';
import 'package:traineeit/pages/select_type/select_type_event.dart';
import 'package:traineeit/pages/select_type/select_type_state.dart';

class TypeButtonContinue extends StatelessWidget {
  final UserModel user;

  TypeButtonContinue({@required this.user});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SelectTypeBloc, SelectTypeState>(
      builder: (context, state) => Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: RaisedButton(
              onPressed: state.loading || state.type?.isNotEmpty != true
                  ? null
                  : () => BlocProvider.of<SelectTypeBloc>(context).add(Register(
                      type: state.type,
                      googleId: user.googleId,
                      email: user.email,
                      name: user.name)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Theme.of(context).primaryColor,
              child: Text(
                'Continuar',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

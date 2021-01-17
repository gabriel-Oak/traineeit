import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/user_read_model.dart';
import 'package:traineeit/pages/home/home_event.dart';
import 'package:traineeit/pages/home/home_state.dart';
import 'package:traineeit/services/user_service.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final UserService userService;
  HomeBloc({@required this.userService}) : super(HomeState());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event is InitHome) {
      yield state.copyWith(loading: true);
      try {
        final UserReadModel user = await userService.getUser(1);
        print(user.props);
        yield state.copyWith(loading: false, user: user);
      } catch (e) {
        yield state.copyWith(
            loading: false, error: 'Erro ao buscar informações!');
        print(e);
      }
    }
  }
}

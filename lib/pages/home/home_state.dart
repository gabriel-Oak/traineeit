import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:traineeit/models/user_read_model.dart';

@immutable
class HomeState extends Equatable {
  final UserReadModel user;
  final bool loading;
  final String error;

  HomeState({
    this.user,
    this.loading = false,
    this.error,
  });

  HomeState copyWith({
    UserReadModel user,
    bool loading,
    String error,
  }) =>
      HomeState(
        user: user ?? this.user,
        loading: loading ?? this.loading,
        error: error,
      );

  @override
  List<Object> get props => [user, loading, error];
}

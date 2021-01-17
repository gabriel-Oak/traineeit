import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/user_model.dart';

@immutable
class LoginState extends Equatable {
  final bool loading;
  final bool success;
  final bool selectType;
  final String errorMessage;
  final UserModel user;

  LoginState({
    this.loading = false,
    this.success = false,
    this.selectType = false,
    this.errorMessage,
    this.user,
  });

  LoginState copyWith({
    bool loading,
    bool success,
    bool selectType,
    String errorMessage,
    UserModel user,
  }) =>
      LoginState(
        loading: loading ?? this.loading,
        success: success ?? this.success,
        selectType: selectType ?? this.selectType,
        errorMessage: errorMessage ?? this.errorMessage,
        user: user ?? this.user,
      );

  @override
  List<Object> get props => [loading, success, selectType, errorMessage, user];
}

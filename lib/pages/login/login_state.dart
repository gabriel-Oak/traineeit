import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class LoginState extends Equatable {
  final bool loading;
  final bool success;
  final String errorMessage;

  LoginState({
    this.loading = false,
    this.success = false,
    this.errorMessage,
  });

  LoginState copyWith({
    bool loading,
    bool success,
    String errorMessage,
}) => LoginState(
    loading: loading ?? this.loading,
    success: success ?? this.success,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object> get props => [loading, success, errorMessage];
}

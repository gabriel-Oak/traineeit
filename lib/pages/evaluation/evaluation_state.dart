import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/user_model.dart';

@immutable
class EvaluationState extends Equatable {
  final bool loading;
  final bool success;
  final String errorMessage;
  final UserModel user;

  EvaluationState({
    this.loading = false,
    this.success = false,
    this.errorMessage,
    this.user,
  });

  EvaluationState copyWith({
    bool loading,
    bool success,
    String errorMessage,
    UserModel user,
  }) =>
      EvaluationState(
        loading: loading ?? this.loading,
        success: success ?? this.success,
        errorMessage: errorMessage ?? this.errorMessage,
        user: user ?? this.user,
      );

  @override
  List<Object> get props => [loading, success, errorMessage, user];
}

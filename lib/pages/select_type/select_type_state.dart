import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:traineeit/models/user_model.dart';

@immutable
class SelectTypeState extends Equatable {
  final String type;
  final bool loading;
  final bool success;
  final UserModel user;
  final String errorMessage;

  SelectTypeState({
    this.type,
    this.user,
    this.loading = false,
    this.success = false,
    this.errorMessage,
  });

  SelectTypeState copyWith({
    String type,
    bool loading,
    UserModel user,
    bool success,
    String errorMessage,
  }) =>
      SelectTypeState(
        type: type ?? this.type,
        user: user ?? this.user,
        loading: loading ?? this.loading,
        success: success ?? this.success,
        errorMessage: errorMessage ?? this.errorMessage,
      );

  @override
  List<Object> get props => [type, user, loading, success, errorMessage];
}

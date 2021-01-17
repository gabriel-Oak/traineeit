import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
class SelectTypeState extends Equatable {
  final String type;
  final bool loading;
  final bool success;
  final String errorMessage;

  SelectTypeState({
    this.type,
    this.loading = false,
    this.success = false,
    this.errorMessage,
  });

  SelectTypeState copyWith({
    String type,
    bool loading,
    bool success,
    String errorMessage,
}) => SelectTypeState(
    type: type ?? this.type,
    loading: loading ?? this.loading,
    success: success ?? this.success,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object> get props => [type, loading, success, errorMessage];
}

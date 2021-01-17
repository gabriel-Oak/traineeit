import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class UserCourseModel extends Equatable {
  final int id;
  final String name;
  final String description;
  final String date;
  final List<dynamic> classes;
  final int totalHours;

  UserCourseModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.date,
    @required this.classes,
    @required this.totalHours,
  });

  factory UserCourseModel.fromJSON(Map<String, dynamic> map) => UserCourseModel(
        id: map['id'],
        name: map['nome'],
        description: map['descricao'],
        date: map['datahora'],
        classes: map['aulas'],
        totalHours: map['totaldehoras'],
      );

  @override
  List<Object> get props => [id, name, description, date, classes, totalHours];
}

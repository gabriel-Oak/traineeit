import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:traineeit/models/class_model.dart';

class CourseReadModel extends Equatable {
  final int id;
  final String name;
  final String description;
  final String date;
  final List<dynamic> classes;

  CourseReadModel({
    @required this.id,
    @required this.name,
    @required this.description,
    @required this.date,
    @required this.classes,
  });

  factory CourseReadModel.fromJSON(Map<String, dynamic> map) => CourseReadModel(
        id: map['id'],
        name: map['nome'],
        description: map['descricao'],
        date: map['datahora'],
        classes: map['aulas']
            .map(
              (e) => ClassModel.fromJSON(e),
            )
            .toList(),
      );

  @override
  List<Object> get props => [id, name, description, date, classes];
}

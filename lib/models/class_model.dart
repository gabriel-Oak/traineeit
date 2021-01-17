import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

class ClassModel extends Equatable {
  final String name;
  final String date;
  final String url;

  ClassModel({
    @required this.name,
    @required this.date,
    @required this.url,
  });

  factory ClassModel.fromJSON(Map<String, dynamic> map) => ClassModel(
        name: map['nome'],
        date: map['datahora'],
        url: map['linkmeet'],
      );

  @override
  List<Object> get props => [name, date, url];
}

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class UserModel extends Equatable {
  final int id;
  final String googleId;
  final String name;
  final String email;
  final String type;

  UserModel({
    @required this.id,
    @required this.googleId,
    @required this.name,
    @required this.email,
    @required this.type,
  });

  @override
  List<Object> get props => [
        id,
        googleId,
        name,
        email,
        type,
      ];
}

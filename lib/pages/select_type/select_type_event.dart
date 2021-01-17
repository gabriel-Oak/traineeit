import 'package:meta/meta.dart';

abstract class SelectTypeEvent {}

class SelectType extends SelectTypeEvent {
  final String type;

  SelectType({@required this.type});
}

class Register extends SelectTypeEvent {
  final String type;
  final String googleId;
  final String email;
  final String name;

  Register(
      {@required this.type,
      @required this.googleId,
      @required this.email,
      @required this.name});
}

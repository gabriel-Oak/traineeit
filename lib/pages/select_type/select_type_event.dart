import 'package:meta/meta.dart';
import 'package:traineeit/models/user_model.dart';

abstract class SelectTypeEvent {}

class SelectType extends SelectTypeEvent {
  final String type;

  SelectType({@required this.type});
}

class Register extends SelectTypeEvent {
final UserModel user;

  Register({@required this.user});
}

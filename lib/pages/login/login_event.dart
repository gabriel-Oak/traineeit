import 'package:meta/meta.dart';

abstract class LoginEvent {}

class GoogleLogin extends LoginEvent {}

class SelectType extends LoginEvent {
  final String type;

  SelectType({@required this.type });
}

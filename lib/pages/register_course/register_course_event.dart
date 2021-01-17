import 'package:meta/meta.dart';

abstract class RegisterCourseEvent {}

class GoogleLogin extends RegisterCourseEvent {}

class SelectType extends RegisterCourseEvent {
  final String type;

  SelectType({@required this.type });
}

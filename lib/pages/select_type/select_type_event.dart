import 'package:meta/meta.dart';

abstract class SelectTypeEvent {}

class SelectType extends SelectTypeEvent {
  final String type;

  SelectType({@required this.type });
}

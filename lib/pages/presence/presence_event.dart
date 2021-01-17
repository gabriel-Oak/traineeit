import 'package:flutter/foundation.dart';

abstract class PresenceEvent {}

class InitPresence extends PresenceEvent {
  final int id;
  InitPresence({@required this.id});
}

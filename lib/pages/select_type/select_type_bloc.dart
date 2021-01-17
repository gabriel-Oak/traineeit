import 'package:bloc/bloc.dart';

import 'select_type_state.dart';
import 'select_type_event.dart';

class SelectTypeBloc extends Bloc<SelectTypeEvent, SelectTypeState> {

  SelectTypeBloc() : super(SelectTypeState());

  @override
  Stream<SelectTypeState> mapEventToState(SelectTypeEvent event) async* {

  }
}

import 'package:bloc/bloc.dart';

import 'select_type_state.dart';
import 'select_type_event.dart';

class SelectTypeBloc extends Bloc<SelectTypeEvent, SelectTypeState> {
  SelectTypeBloc() : super(SelectTypeState());

  @override
  Stream<SelectTypeState> mapEventToState(SelectTypeEvent event) async* {
    if (event is SelectType) {
      yield state.copyWith(type: event.type);
    }

    if (event is Register) {
      yield state.copyWith(loading: true);
      try {
        await Future.delayed(Duration(seconds: 2));
        yield state.copyWith(loading: false, success: true);
      } catch (e) {
        yield state.copyWith(
            loading: false, errorMessage: 'Tivemos um problema');
      }
    }
  }
}

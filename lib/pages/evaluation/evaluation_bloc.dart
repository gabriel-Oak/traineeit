import 'package:bloc/bloc.dart';

import 'evaluation_event.dart';
import 'evaluation_state.dart';

class EvaluationBloc extends Bloc<EvaluationEvent, EvaluationState> {
  EvaluationBloc() : super(EvaluationState());

  @override
  Stream<EvaluationState> mapEventToState(
      EvaluationEvent event) async* {
  }
}

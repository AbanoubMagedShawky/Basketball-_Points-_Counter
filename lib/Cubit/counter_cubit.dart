import 'package:basketball_points_counter/Cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAincrementSdtate());
  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement(String teamName, int buttonNumber) {
    if (teamName == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAincrementSdtate());
    } else {
      teamBPoints += buttonNumber;
      emit(CounterBincrementState());
    }
  }

  void reset() {
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAincrementSdtate());
  }
}

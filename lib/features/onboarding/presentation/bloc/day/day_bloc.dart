import 'dart:async';

import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'day_event.dart';
part 'day_state.dart';

class DayBloc extends Bloc<DayEvent, DayState> {
  DayBloc(this._dayUsecase) : super(DayInitial()) {
    on<LoadDaysEvent>(_onLoadDaysEvent);
  }

  final GetDayUsecase _dayUsecase;

  Future<void> _onLoadDaysEvent(
    LoadDaysEvent event,
    Emitter<DayState> emit,
  ) async {
    emit(DayLoading());
    try {
      final days = await _dayUsecase.call();
      emit(DayLoaded(days: days));
    } catch (e) {
      emit(DayError(message: e.toString()));
    }
  }
}

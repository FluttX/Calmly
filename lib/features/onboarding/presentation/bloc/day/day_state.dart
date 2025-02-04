part of 'day_bloc.dart';

abstract class DayState {}

class DayInitial extends DayState {}

class DayLoading extends DayState {}

class DayLoaded extends DayState {
  DayLoaded({required this.days});

  final List<DayData> days;
}

class DayError extends DayState {
  DayError({required this.message});
  final String message;
}

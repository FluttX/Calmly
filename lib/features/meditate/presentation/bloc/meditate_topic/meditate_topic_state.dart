part of 'meditate_topic_bloc.dart';

abstract class MeditateTopicState {}

final class MeditateTopicInitial extends MeditateTopicState {}

final class MeditateTopicLoading extends MeditateTopicState {}

final class MeditateTopicLoaded extends MeditateTopicState {
  MeditateTopicLoaded({required this.topics});

  final List<MeditateData> topics;
}

final class MeditateTopicError extends MeditateTopicState {
  MeditateTopicError({required this.message});

  final String message;
}

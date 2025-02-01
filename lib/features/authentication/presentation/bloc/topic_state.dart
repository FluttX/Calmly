part of 'topic_bloc.dart';

abstract class TopicState {}

final class TopicInitial extends TopicState {}

class TopicLoading extends TopicState {}

class TopicLoaded extends TopicState {
  TopicLoaded(this.topics);
  final List<TopicData> topics;
}

class TopicError extends TopicState {}

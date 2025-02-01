import 'dart:async';

import 'package:calmly/features/authentication/domain/entities/topic_data.dart';
import 'package:calmly/features/authentication/domain/usecase/get_topics_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'topic_event.dart';
part 'topic_state.dart';

class TopicBloc extends Bloc<TopicEvent, TopicState> {
  TopicBloc({required GetTopicUsecase topicUsecase})
      : _topicUsecase = topicUsecase,
        super(TopicInitial()) {
    on<FetchTopicsEvent>(_onFetchTopicsEvent);
  }

  final GetTopicUsecase _topicUsecase;

  Future<void> _onFetchTopicsEvent(
    FetchTopicsEvent event,
    Emitter<TopicState> emit,
  ) async {
    emit(TopicLoading());
    try {
      final topics = await _topicUsecase.call();
      emit(TopicLoaded(topics));
    } catch (e) {
      emit(TopicError());
    }
  }
}

import 'dart:async';

import 'package:calmly/features/meditate/domain/entities/meditate_data.dart';
import 'package:calmly/features/meditate/domain/usecase/get_meditate_topics_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'meditate_topic_event.dart';
part 'meditate_topic_state.dart';

class MeditateTopicBloc extends Bloc<MeditateTopicEvent, MeditateTopicState> {
  MeditateTopicBloc(this._meditateTopicsUsecase)
      : super(MeditateTopicInitial()) {
    on<LoadMeditateTopics>(_onLoadMeditateTopics);
  }

  final GetMeditateTopicsUsecase _meditateTopicsUsecase;

  Future<void> _onLoadMeditateTopics(
    LoadMeditateTopics event,
    Emitter<MeditateTopicState> emit,
  ) async {
    emit(MeditateTopicLoading());

    final results = await _meditateTopicsUsecase.call();

    results.fold(
      (error) => emit(MeditateTopicError(message: error.toString())),
      (topics) => emit(MeditateTopicLoaded(topics: topics)),
    );
  }
}

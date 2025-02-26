import 'dart:async';

import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:calmly/features/meditate/domain/entities/meditate_data.dart';
import 'package:calmly/features/meditate/domain/usecase/get_meditate_categories_usecase.dart';
import 'package:calmly/features/meditate/domain/usecase/get_meditate_topics_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'meditate_event.dart';
part 'meditate_state.dart';

class MeditateBloc extends Bloc<MeditateEvent, MeditateState> {
  MeditateBloc(
    this._meditateCategoriesUseCase,
    this._meditateTopicsUsecase,
  ) : super(MeditateInitial()) {
    on<LoadMeditateCategories>(_onLoadMeditateCategories);
    on<LoadMeditateTopics>(_onLoadMeditateTopics);
    on<SelectMeditateCategory>(_onSelectCategory);
  }

  final GetMeditateCategoriesUseCase _meditateCategoriesUseCase;
  final GetMeditateTopicsUsecase _meditateTopicsUsecase;

  Future<void> _onLoadMeditateCategories(
    LoadMeditateCategories event,
    Emitter<MeditateState> emit,
  ) async {
    final currentState =
        state is MeditateLoaded ? state as MeditateLoaded : MeditateLoaded();

    emit(
      currentState.copyWith(isLoadingCategories: true, isLoadingTopics: true),
    );

    try {
      final response = await _meditateCategoriesUseCase.call();

      response.fold(
        (error) => emit(
          currentState.copyWith(
            isLoadingCategories: false,
            categoryError: error.message,
          ),
        ),
        (data) => emit(
          currentState.copyWith(
            categories: data,
            isLoadingCategories: false,
          ),
        ),
      );

      add(LoadMeditateTopics());
    } catch (e) {
      emit(
        currentState.copyWith(
          isLoadingCategories: false,
          categoryError: e.toString(),
        ),
      );

      add(LoadMeditateTopics());
    }
  }

  FutureOr<void> _onSelectCategory(
    SelectMeditateCategory event,
    Emitter<MeditateState> emit,
  ) {
    if (state is MeditateLoaded) {
      final currentState = state as MeditateLoaded;
      emit(currentState.copyWith(selectedIndex: event.selectedIndex));
    }
  }

  Future<void> _onLoadMeditateTopics(
    LoadMeditateTopics event,
    Emitter<MeditateState> emit,
  ) async {
    final currentState =
        state is MeditateLoaded ? state as MeditateLoaded : MeditateLoaded();

    emit(currentState.copyWith(isLoadingTopics: true));

    try {
      final response = await _meditateTopicsUsecase.call();

      response.fold(
        (error) => emit(
          currentState.copyWith(
            isLoadingTopics: false,
            topicError: error.message,
          ),
        ),
        (data) => emit(
          currentState.copyWith(
            topics: data,
            isLoadingTopics: false,
          ),
        ),
      );
    } catch (e) {
      emit(
        currentState.copyWith(
          isLoadingTopics: false,
          topicError: e.toString(),
        ),
      );
    }
  }
}

import 'dart:async';

import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:calmly/features/meditate/domain/usecase/get_meditate_categories_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'meditate_event.dart';
part 'meditate_state.dart';

class MeditateBloc extends Bloc<MeditateEvent, MeditateState> {
  MeditateBloc(this._meditateCategoriesUseCase) : super(MeditateInitial()) {
    on<LoadMeditateCategories>(_onLoadMeditateCategories);
    on<SelectMeditateCategory>(_onSelectCategory);
  }

  final GetMeditateCategoriesUseCase _meditateCategoriesUseCase;

  Future<void> _onLoadMeditateCategories(
    LoadMeditateCategories event,
    Emitter<MeditateState> emit,
  ) async {
    emit(MeditateCategoryLoading());

    try {
      final response = await _meditateCategoriesUseCase.call();

      response.fold(
        (error) => emit(MeditateCategoryError(error.message)),
        (data) => emit(MeditateCategoryLoaded(categories: data)),
      );
    } catch (e) {
      emit(MeditateCategoryError(e.toString()));
    }
  }

  FutureOr<void> _onSelectCategory(
    SelectMeditateCategory event,
    Emitter<MeditateState> emit,
  ) {
    if (state is MeditateCategoryLoaded) {
      final currentState = state as MeditateCategoryLoaded;
      emit(currentState.copyWith(selectedIndex: event.selectedIndex));
    }
  }
}

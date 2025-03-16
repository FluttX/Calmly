import 'dart:async';

import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:calmly/features/meditate/domain/usecase/get_meditate_categories_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'meditate_category_event.dart';
part 'meditate_category_state.dart';

class MeditateCategoryBloc
    extends Bloc<MeditateCategoryEvent, MeditateCategoryState> {
  MeditateCategoryBloc(this._meditateCategoriesUseCase)
      : super(MeditateCategoryInitial()) {
    on<LoadMeditateCategories>(_onLoadMeditateCategories);
    on<SelectMeditateCategory>(_onSelectCategory);
  }

  final GetMeditateCategoriesUseCase _meditateCategoriesUseCase;

  Future<void> _onLoadMeditateCategories(
    LoadMeditateCategories event,
    Emitter<MeditateCategoryState> emit,
  ) async {
    emit(MeditateCategoryLoading());

    final result = await _meditateCategoriesUseCase.call();

    result.fold(
      (error) => emit(MeditateCategoryError(message: error.toString())),
      (categories) => emit(MeditateCategoryLoaded(categories: categories)),
    );
  }

  Future<void> _onSelectCategory(
    SelectMeditateCategory event,
    Emitter<MeditateCategoryState> emit,
  ) async {
    if (state is! MeditateCategoryLoaded) return;

    final currentState = state as MeditateCategoryLoaded;

    emit(currentState.copyWith(selectedIndex: event.selectedIndex));
  }
}

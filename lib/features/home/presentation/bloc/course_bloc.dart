import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/features/home/domain/usecase/get_recommended_courses_usecase.dart';

part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  CourseBloc(this._recommendedCoursesUsecase) : super(CourseInitial()) {
    on<LoadRecommendedCoursesEvent>(_onLoadRecommendedCoursesEvent);
  }

  final GetRecommendedCoursesUsecase _recommendedCoursesUsecase;

  Future<void> _onLoadRecommendedCoursesEvent(
    LoadRecommendedCoursesEvent event,
    Emitter<CourseState> emit,
  ) async {
    emit(CourseLoading());
    try {
      final courses = await _recommendedCoursesUsecase.call();

      courses.fold(
        (error) => emit(CourseError(error.toString())),
        (courses) => emit(CourseLoaded(courses)),
      );
    } catch (e) {
      emit(CourseError(e.toString()));
    }
  }
}

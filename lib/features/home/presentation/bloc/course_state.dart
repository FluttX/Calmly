part of 'course_bloc.dart';

abstract class CourseState {}

class CourseInitial extends CourseState {}

class CourseLoading extends CourseState {}

class CourseLoaded extends CourseState {
  CourseLoaded(this.courses);

  final List<CourseData> courses;
}

class CourseError extends CourseState {
  CourseError(this.message);

  final String message;
}

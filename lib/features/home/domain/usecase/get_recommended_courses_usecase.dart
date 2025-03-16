import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/features/home/domain/repository/course_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetRecommendedCoursesUsecase {
  GetRecommendedCoursesUsecase(this._repository);

  final CourseRepository _repository;

  Future<Either<Failure, List<CourseData>>> call() {
    return _repository.getRecommendedCourses();
  }
}

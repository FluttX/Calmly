import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/features/home/domain/repository/course_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetRecommendedCoursesUsecase {
  GetRecommendedCoursesUsecase(this._repository);

  final CourseRepository _repository;

  Future<List<CourseData>> call() {
    return _repository.getRecommendedCourses();
  }
}

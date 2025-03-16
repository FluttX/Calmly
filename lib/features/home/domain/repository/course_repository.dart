import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:dartz/dartz.dart';

abstract class CourseRepository {
  Future<Either<Failure, List<CourseData>>> getRecommendedCourses();
}

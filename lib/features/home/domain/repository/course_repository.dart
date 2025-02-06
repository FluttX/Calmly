import 'package:calmly/features/home/domain/entities/course_data.dart';

abstract class CourseRepository {
  Future<List<CourseData>> getRecommendedCourses();
}

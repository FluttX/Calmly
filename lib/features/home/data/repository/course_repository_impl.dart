import 'package:calmly/features/home/data/datasource/remote/course_remote_datasource.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/features/home/domain/repository/course_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CourseRepository)
class CourseRepositoryImpl extends CourseRepository {
  CourseRepositoryImpl(this._remoteDatasource);

  final CourseRemoteDatasource _remoteDatasource;

  @override
  Future<List<CourseData>> getRecommendedCourses() {
    return _remoteDatasource.getRecommendedCourses();
  }
}

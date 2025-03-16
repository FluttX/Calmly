import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/home/data/datasource/remote/course_remote_datasource.dart';
import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:calmly/features/home/domain/repository/course_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: CourseRepository)
class CourseRepositoryImpl extends CourseRepository {
  CourseRepositoryImpl(this._remoteDatasource);

  final CourseRemoteDatasource _remoteDatasource;

  @override
  Future<Either<Failure, List<CourseData>>> getRecommendedCourses() async {
    try {
      final result = await _remoteDatasource.getRecommendedCourses();
      return Right(result);
    } catch (e) {
      debugPrint('##### $e');
      return const Left(ServerFailure());
    }
  }
}

import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/meditate/data/datasource/remote/meditate_remote_datasource.dart';
import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:calmly/features/meditate/domain/repository/meditate_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MeditateRepository)
class MeditateRepositoryImpl extends MeditateRepository {
  MeditateRepositoryImpl(this._remoteDataSource);

  final MeditateRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<CategoryData>>> getMeditateCategories() async {
    try {
      final result = await _remoteDataSource.getMeditateCategories();
      return Right(result);
    } catch (e) {
      debugPrint('##### $e');
      return const Left(ServerFailure());
    }
  }
}

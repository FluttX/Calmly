import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/music/data/datasource/remote/music_remote_datasource.dart';
import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:calmly/features/music/domain/repository/music_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: MusicRepository)
class MusicRepositoryImpl extends MusicRepository {
  MusicRepositoryImpl(this._remoteDatasource);

  final MusicRemoteDatasource _remoteDatasource;

  @override
  Future<Either<Failure, List<MusicData>>> getMusics() async {
    try {
      final result = await _remoteDatasource.getMusics();
      return Right(result);
    } catch (e) {
      debugPrint('##### $e');
      return const Left(ServerFailure());
    }
  }
}

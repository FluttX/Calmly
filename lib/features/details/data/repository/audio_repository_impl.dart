import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/details/data/datasource/remote/audio_remote_data_source.dart';
import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:calmly/features/details/domain/repository/audio_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: AudioRepository)
class AudioRepositoryImpl extends AudioRepository {
  AudioRepositoryImpl(this._remoteDataSource);

  final AudioRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, List<AudioData>>> getAudioResponses() async {
    try {
      final result = await _remoteDataSource.fetchAudioResponses();
      return Right(result);
    } catch (e) {
      debugPrint('##### $e');
      return const Left(ServerFailure());
    }
  }
}

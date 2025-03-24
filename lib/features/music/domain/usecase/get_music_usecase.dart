import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:calmly/features/music/domain/repository/music_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetMusicUsecase {
  GetMusicUsecase(this._repository);

  final MusicRepository _repository;

  Future<Either<Failure, List<MusicData>>> call() {
    return _repository.getMusics();
  }
}

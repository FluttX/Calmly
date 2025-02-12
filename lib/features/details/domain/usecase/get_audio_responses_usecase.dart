import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:calmly/features/details/domain/repository/audio_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetAudioResponsesUsecase {
  GetAudioResponsesUsecase(this._repository);
  final AudioRepository _repository;

  Future<Either<Failure, List<AudioData>>> call() {
    return _repository.getAudioResponses();
  }
}

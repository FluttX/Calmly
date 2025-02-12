import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:dartz/dartz.dart';

abstract class AudioRepository {
  Future<Either<Failure, List<AudioData>>> getAudioResponses();
}

import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:dartz/dartz.dart';

abstract class MusicRepository {
  Future<Either<Failure, List<MusicData>>> getMusics();
}

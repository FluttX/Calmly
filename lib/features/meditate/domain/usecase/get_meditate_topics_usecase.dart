import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/meditate/domain/entities/meditate_data.dart';
import 'package:calmly/features/meditate/domain/repository/meditate_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetMeditateTopicsUsecase {
  GetMeditateTopicsUsecase(this._repository);

  final MeditateRepository _repository;

  Future<Either<Failure, List<MeditateData>>> call() {
    return _repository.getMeditateTopics();
  }
}

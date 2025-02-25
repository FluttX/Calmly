import 'package:calmly/core/error/failures.dart';
import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:dartz/dartz.dart';

abstract class MeditateRepository {
  Future<Either<Failure, List<CategoryData>>> getMeditateCategories();
}

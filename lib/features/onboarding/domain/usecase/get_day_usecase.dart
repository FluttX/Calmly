import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetDayUsecase {
  GetDayUsecase(this._repository);

  final DayRepository _repository;

  Future<List<DayData>> call() {
    return _repository.getDays();
  }
}

import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: DayRepository)
class DayRepositoryImpl extends DayRepository {
  DayRepositoryImpl(this._remoteDataSource);

  final DayRemoteDataSource _remoteDataSource;

  @override
  Future<List<DayData>> getDays() {
    return _remoteDataSource.getTopics();
  }
}

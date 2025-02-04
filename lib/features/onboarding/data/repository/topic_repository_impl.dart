import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: TopicRepository)
class TopicRepositoryImpl extends TopicRepository {
  TopicRepositoryImpl({required TopicRemoteDataSource remoteDataSource})
      : _remoteDataSource = remoteDataSource;

  final TopicRemoteDataSource _remoteDataSource;

  @override
  Future<List<TopicData>> getTopics() {
    return _remoteDataSource.getTopics();
  }
}

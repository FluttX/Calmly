import 'package:calmly/features/authentication/data/datasource/remote/topic_remote_datasource.dart';
import 'package:calmly/features/authentication/domain/entities/topic_data.dart';
import 'package:calmly/features/authentication/domain/repository/topic_repository.dart';
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

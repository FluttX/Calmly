import 'package:calmly/features/authentication/domain/entities/topic_data.dart';
import 'package:calmly/features/authentication/domain/repository/topic_repository.dart';

class GetTopicUsecase {
  GetTopicUsecase({required TopicRepository repository})
      : _repository = repository;

  final TopicRepository _repository;

  Future<List<TopicData>> call() {
    return _repository.getTopics();
  }
}

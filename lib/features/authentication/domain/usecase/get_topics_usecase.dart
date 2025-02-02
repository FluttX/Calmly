import 'package:calmly/features/authentication/authentication.dart';

class GetTopicUsecase {
  GetTopicUsecase({required TopicRepository repository})
      : _repository = repository;

  final TopicRepository _repository;

  Future<List<TopicData>> call() {
    return _repository.getTopics();
  }
}

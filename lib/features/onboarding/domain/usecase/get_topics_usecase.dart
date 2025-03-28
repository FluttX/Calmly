import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetTopicUsecase {
  GetTopicUsecase({required TopicRepository repository})
      : _repository = repository;

  final TopicRepository _repository;

  Future<List<TopicData>> call() {
    return _repository.getTopics();
  }
}

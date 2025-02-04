import 'package:calmly/features/onboarding/onboarding.dart';

abstract class TopicRepository {
  Future<List<TopicData>> getTopics();
}

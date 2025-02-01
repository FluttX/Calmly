import 'package:calmly/features/authentication/domain/entities/topic_data.dart';

abstract class TopicRepository {
  Future<List<TopicData>> getTopics();
}

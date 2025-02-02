import 'package:calmly/features/authentication/authentication.dart';

abstract class TopicRepository {
  Future<List<TopicData>> getTopics();
}

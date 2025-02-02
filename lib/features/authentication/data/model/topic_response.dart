import 'package:calmly/features/authentication/authentication.dart';
import 'package:json_annotation/json_annotation.dart';

part 'topic_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TopicResponse extends TopicData {
  TopicResponse({
    required super.image,
    required super.title,
    required super.color,
    required super.textColor,
  });

  factory TopicResponse.fromJson(Map<String, dynamic> json) =>
      _$TopicResponseFromJson(json);
}

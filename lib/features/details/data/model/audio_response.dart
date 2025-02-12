import 'package:calmly/features/details/domain/entities/audio_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'audio_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AudioResponse extends AudioData {
  const AudioResponse({
    required super.title,
    required super.author,
    required super.duration,
    required super.isMale,
  });

  factory AudioResponse.fromJson(Map<String, dynamic> json) =>
      _$AudioResponseFromJson(json);
}

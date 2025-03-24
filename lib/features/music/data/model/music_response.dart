import 'package:calmly/features/music/domain/entities/music_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'music_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MusicResponse extends MusicData {
  MusicResponse({
    required super.title,
    required super.image,
    required super.time,
    required super.type,
  });

  factory MusicResponse.fromJson(Map<String, dynamic> json) =>
      _$MusicResponseFromJson(json);
}

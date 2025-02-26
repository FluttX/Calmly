import 'package:calmly/features/meditate/domain/entities/meditate_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'meditate_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class MeditateResponse extends MeditateData {
  MeditateResponse({
    required super.id,
    required super.title,
    required super.image,
  });

  factory MeditateResponse.fromJson(Map<String, dynamic> json) =>
      _$MeditateResponseFromJson(json);
}

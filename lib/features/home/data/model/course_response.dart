import 'package:calmly/features/home/domain/entities/course_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'course_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CourseResponse extends CourseData {
  CourseResponse({
    required super.image,
    required super.title,
    required super.type,
    required super.time,
    required super.color,
  });

  factory CourseResponse.fromJson(Map<String, dynamic> json) =>
      _$CourseResponseFromJson(json);
}

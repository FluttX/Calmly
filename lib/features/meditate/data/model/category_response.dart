import 'package:calmly/features/meditate/domain/entities/category_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class CategoryResponse extends CategoryData {
  CategoryResponse({
    required super.id,
    required super.title,
    required super.icon,
  });

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$CategoryResponseFromJson(json);
}

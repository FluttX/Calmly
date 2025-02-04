import 'package:calmly/features/onboarding/onboarding.dart';
import 'package:json_annotation/json_annotation.dart';

part 'day_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DayResponse extends DayData {
  DayResponse({required super.name, required super.value});

  factory DayResponse.fromJson(Map<String, dynamic> json) =>
      _$DayResponseFromJson(json);
}

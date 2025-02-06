// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) =>
    CourseResponse(
      image: json['image'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      time: json['time'] as String,
      color: json['color'] as String,
    );

Map<String, dynamic> _$CourseResponseToJson(CourseResponse instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'type': instance.type,
      'time': instance.time,
      'color': instance.color,
    };

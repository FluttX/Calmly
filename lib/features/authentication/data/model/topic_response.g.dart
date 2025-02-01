// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TopicResponse _$TopicResponseFromJson(Map<String, dynamic> json) =>
    TopicResponse(
      image: json['image'] as String,
      title: json['title'] as String,
      color: json['color'] as String,
      textColor: json['text_color'] as String,
    );

Map<String, dynamic> _$TopicResponseToJson(TopicResponse instance) =>
    <String, dynamic>{
      'image': instance.image,
      'title': instance.title,
      'color': instance.color,
      'text_color': instance.textColor,
    };

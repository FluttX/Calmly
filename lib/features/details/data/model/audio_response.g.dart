// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AudioResponse _$AudioResponseFromJson(Map<String, dynamic> json) =>
    AudioResponse(
      title: json['title'] as String,
      author: json['author'] as String,
      duration: (json['duration'] as num).toInt(),
      isMale: json['is_male'] as bool,
    );

Map<String, dynamic> _$AudioResponseToJson(AudioResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'duration': instance.duration,
      'is_male': instance.isMale,
    };

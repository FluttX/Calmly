// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'music_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MusicResponse _$MusicResponseFromJson(Map<String, dynamic> json) =>
    MusicResponse(
      title: json['title'] as String,
      image: json['image'] as String,
      time: json['time'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$MusicResponseToJson(MusicResponse instance) =>
    <String, dynamic>{
      'title': instance.title,
      'image': instance.image,
      'time': instance.time,
      'type': instance.type,
    };

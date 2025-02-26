// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meditate_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MeditateResponse _$MeditateResponseFromJson(Map<String, dynamic> json) =>
    MeditateResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$MeditateResponseToJson(MeditateResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
    };

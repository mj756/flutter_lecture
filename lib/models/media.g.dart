// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Media _$MediaFromJson(Map<String, dynamic> json) => Media()
  ..id = json['id'] as int
  ..mediaName = json['mediaName'] as String
  ..mediaUrl = json['mediaUrl'] as String
  ..originalName = json['originalName'] as String
  ..mediaType = json['mediaType'] as String
  ..advertisementId = json['advertisementId'] as int;

Map<String, dynamic> _$MediaToJson(Media instance) => <String, dynamic>{
      'id': instance.id,
      'mediaName': instance.mediaName,
      'mediaUrl': instance.mediaUrl,
      'originalName': instance.originalName,
      'mediaType': instance.mediaType,
      'advertisementId': instance.advertisementId,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_obj.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MainObj _$MainObjFromJson(Map<String, dynamic> json) => MainObj()
  ..count = json['count'] as int
  ..entries = (json['entries'] as List<dynamic>)
      .map((e) => DemoAPI.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$MainObjToJson(MainObj instance) => <String, dynamic>{
      'count': instance.count,
      'entries': instance.entries,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomResponse _$CustomResponseFromJson(Map<String, dynamic> json) =>
    CustomResponse()
      ..status = json['status'] as int
      ..payload = json['payload']
      ..message = json['message'] as String? ?? '';

Map<String, dynamic> _$CustomResponseToJson(CustomResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'payload': instance.payload,
      'message': instance.message,
    };

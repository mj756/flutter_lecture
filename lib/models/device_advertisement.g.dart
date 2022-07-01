// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_advertisement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeviceAdvertisement _$DeviceAdvertisementFromJson(Map<String, dynamic> json) =>
    DeviceAdvertisement()
      ..advertisementName = json['advertisementName'] as String
      ..medias = (json['medias'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$DeviceAdvertisementToJson(
        DeviceAdvertisement instance) =>
    <String, dynamic>{
      'advertisementName': instance.advertisementName,
      'medias': instance.medias,
    };

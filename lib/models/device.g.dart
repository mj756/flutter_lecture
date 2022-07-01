// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Device _$DeviceFromJson(Map<String, dynamic> json) => Device()
  ..id = json['id'] as int
  ..status = json['status'] as bool? ?? false
  ..deviceType = json['deviceType'] as String
  ..deviceUrl = json['deviceUrl'] as String
  ..deviceIPAddress = json['deviceIPAddress'] as String? ?? ''
  ..isInternetAvailable = json['isInternetAvailable'] as bool? ?? false
  ..isSynced = json['isSynced'] as bool? ?? false
  ..deviceAddress =
      Address.fromJson(json['deviceAddress'] as Map<String, dynamic>)
  ..userId = json['userId'] as int
  ..insertedOn = Utility.dateFromJson(json['insertedOn'] as String)
  ..updatedOn = Utility.dateFromJson(json['updatedOn'] as String)
  ..startTime = Utility.dateFromJson(json['startTime'] as String)
  ..endTime = Utility.dateFromJson(json['endTime'] as String)
  ..lastSyncTime = Utility.dateFromJson(json['lastSyncTime'] as String)
  ..advertisements = (json['advertisements'] as List<dynamic>?)
      ?.map((e) => DeviceAdvertisement.fromJson(e as Map<String, dynamic>))
      .toList()
  ..totalImage = json['totalImage'] as int? ?? 0
  ..totalAdvertisement = json['totalAdvertisement'] as int? ?? 0
  ..totalVideo = json['totalVideo'] as int? ?? 0;

Map<String, dynamic> _$DeviceToJson(Device instance) => <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'deviceType': instance.deviceType,
      'deviceUrl': instance.deviceUrl,
      'deviceIPAddress': instance.deviceIPAddress,
      'isInternetAvailable': instance.isInternetAvailable,
      'isSynced': instance.isSynced,
      'deviceAddress': instance.deviceAddress,
      'userId': instance.userId,
      'insertedOn': Utility.dateToJson(instance.insertedOn),
      'updatedOn': Utility.dateToJson(instance.updatedOn),
      'startTime': Utility.dateToJson(instance.startTime),
      'endTime': Utility.dateToJson(instance.endTime),
      'lastSyncTime': Utility.dateToJson(instance.lastSyncTime),
      'advertisements': instance.advertisements,
      'totalImage': instance.totalImage,
      'totalAdvertisement': instance.totalAdvertisement,
      'totalVideo': instance.totalVideo,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advertisement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Advertisements _$AdvertisementsFromJson(Map<String, dynamic> json) =>
    Advertisements()
      ..id = json['id'] as int
      ..advertisementName = json['advertisementName'] as String
      ..userId = json['userId'] as int
      ..startTime = Utility.dateFromJson(json['startTime'] as String)
      ..endTime = Utility.dateFromJson(json['endTime'] as String)
      ..startDate = Utility.dateFromJson(json['startDate'] as String)
      ..endDate = Utility.dateFromJson(json['endDate'] as String)
      ..devices =
          (json['devices'] as List<dynamic>?)?.map((e) => e as String).toList()
      ..insertedOn = Utility.dateFromJson(json['insertedOn'] as String)
      ..updatedOn = Utility.dateFromJson(json['updatedOn'] as String)
      ..category = json['category'] as int
      ..medias = (json['medias'] as List<dynamic>?)
          ?.map((e) => Media.fromJson(e as Map<String, dynamic>))
          .toList();

Map<String, dynamic> _$AdvertisementsToJson(Advertisements instance) =>
    <String, dynamic>{
      'id': instance.id,
      'advertisementName': instance.advertisementName,
      'userId': instance.userId,
      'startTime': Utility.dateToJson(instance.startTime),
      'endTime': Utility.dateToJson(instance.endTime),
      'startDate': Utility.dateToJson(instance.startDate),
      'endDate': Utility.dateToJson(instance.endDate),
      'devices': instance.devices,
      'insertedOn': Utility.dateToJson(instance.insertedOn),
      'updatedOn': Utility.dateToJson(instance.updatedOn),
      'category': instance.category,
      'medias': instance.medias,
    };

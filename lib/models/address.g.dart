// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) => Address()
  ..id = json['id'] as int
  ..country = json['country'] as String
  ..state = json['state'] as String
  ..city = json['city'] as String
  ..street = json['street'] as String
  ..zipCode = json['zipCode'] as String
  ..name = json['name'] as String? ?? ''
  ..userId = json['userId'] as int;

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'id': instance.id,
      'country': instance.country,
      'state': instance.state,
      'city': instance.city,
      'street': instance.street,
      'zipCode': instance.zipCode,
      'name': instance.name,
      'userId': instance.userId,
    };

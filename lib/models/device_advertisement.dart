import 'package:json_annotation/json_annotation.dart';

import 'media.dart';
part 'device_advertisement.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class DeviceAdvertisement {
  late String advertisementName;
  @JsonKey(defaultValue:  null)
  late List<Media>? medias;
  DeviceAdvertisement();

  factory DeviceAdvertisement.fromJson(Map<String, dynamic> json) =>
      _$DeviceAdvertisementFromJson(json);

  Map<String, dynamic> toJson() => _$DeviceAdvertisementToJson(this);

  static List<DeviceAdvertisement> fromJsonList(List<dynamic> jsonValue) {
    List<DeviceAdvertisement> advertisements = List.empty(growable: true);
    for (var value in jsonValue) {
      advertisements.add(DeviceAdvertisement.fromJson(value));
    }
    return advertisements;
  }

}

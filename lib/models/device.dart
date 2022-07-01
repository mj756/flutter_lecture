import 'package:json_annotation/json_annotation.dart';
import '../utils/utility.dart';
import 'address.dart';
import 'device_advertisement.dart';
part 'device.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Device {

  Device();

  late int id;
  @JsonKey(defaultValue: false)
  late bool status;
  late String deviceType;
  late String deviceUrl;
  @JsonKey(defaultValue:   '')
  late String deviceIPAddress;
  @JsonKey(defaultValue:   false)
  late bool isInternetAvailable;
  @JsonKey(defaultValue:  false)
  late bool isSynced;
  late Address deviceAddress;
  late int userId;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime insertedOn;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime updatedOn;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime startTime;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime endTime;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime lastSyncTime;
  @JsonKey(defaultValue:  null)
  late List<DeviceAdvertisement>? advertisements;

  @JsonKey(defaultValue:  0)
  late int totalImage=0;
  @JsonKey(defaultValue:  0)
  late int totalAdvertisement=0;
  @JsonKey(defaultValue:  0)
  late int totalVideo=0;

  factory Device.fromJson(Map<String, dynamic> json) =>
      _$DeviceFromJson(json);


  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  static List<Device> fromJsonList(List<dynamic> jsonValue) {
    List<Device> articleList = List.empty(growable: true);
    for (var value in jsonValue) {
      articleList.add(Device.fromJson(value));
    }
    return articleList;
  }
}

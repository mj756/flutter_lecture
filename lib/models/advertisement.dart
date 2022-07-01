import 'package:json_annotation/json_annotation.dart';
import '../utils/utility.dart';
import 'media.dart';
part 'advertisement.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Advertisements {
  late int id;
  late String advertisementName;
  late int userId;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime startTime;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime endTime;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime startDate;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime endDate;

  @JsonKey(defaultValue: null)
  late List<String>? devices;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime insertedOn;
  @JsonKey(fromJson: Utility.dateFromJson, toJson: Utility.dateToJson)
  late DateTime updatedOn;
  late int category;

  @JsonKey(defaultValue: null)
  late List<Media>? medias;

  Advertisements();

  factory Advertisements.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementsFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertisementsToJson(this);

  static List<Advertisements> fromJsonList(List<dynamic> jsonValue) {
    List<Advertisements> advertisementList = List.empty(growable: true);
    for (var value in jsonValue) {
      advertisementList.add(Advertisements.fromJson(value));
    }
    return advertisementList;
  }
}

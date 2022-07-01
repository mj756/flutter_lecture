import 'package:json_annotation/json_annotation.dart';
part 'test_api.g.dart';
@JsonSerializable()
class DemoAPI
{
  late String API;
  late String Link;
  late String Description;
  factory DemoAPI.fromJson(Map<String, dynamic> json) => _$DemoAPIFromJson(json);
  Map<String, dynamic> toJson() => _$DemoAPIToJson(this);
  DemoAPI();
  static List<DemoAPI> fromJsonList(List<dynamic> jsonValue) {
    List<DemoAPI> articleList = List.empty(growable: true);
    for (var value in jsonValue) {
      articleList.add(DemoAPI.fromJson(value));
    }
    return articleList;
  }
}
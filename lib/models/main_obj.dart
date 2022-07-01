import 'package:flutter/animation.dart';
import 'package:medical_consulttancy/models/test_api.dart';
import 'package:json_annotation/json_annotation.dart';
part 'main_obj.g.dart';
@JsonSerializable()
class MainObj
{
    late int count;
    late List<DemoAPI> entries;
    factory MainObj.fromJson(Map<String, dynamic> json) => _$MainObjFromJson(json);
    Map<String, dynamic> toJson() => _$MainObjToJson(this);
    MainObj() {
        count = 0;
        entries = List.empty(growable: true);
    }
}
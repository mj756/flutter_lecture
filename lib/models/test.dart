import 'package:json_annotation/json_annotation.dart';
part 'test.g.dart';
@JsonSerializable()
class Test
{
  late String fact;
  late int length;

  Test(this.fact,this.length);

  factory Test.fromJson(Map<String, dynamic> json) => _$TestFromJson(json);
  Map<String, dynamic> toJson() => _$TestToJson(this);


  /*
  Test.fromJSon(dynamic json)
  {
        print(json);
        fact=json["fact"];
        length=json["length"];
  }
  Map<String,dynamic> toJson()
  {
    Map<String,dynamic> map={};
    map["fact"]=fact;
    map['length']=length;
    return map;
  }
*/



}
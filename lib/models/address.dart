import 'package:json_annotation/json_annotation.dart';
part 'address.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class Address
{
   late int id ;
   late String country ;
   late String state ;
  late String city ;
  late String street ;
  late String zipCode ;
  @JsonKey(defaultValue:  '')
  late String name ;
  late int userId ;
   Address();
   factory Address.fromJson(Map<String, dynamic> json) =>
       _$AddressFromJson(json);

   Map<String, dynamic> toJson() => _$AddressToJson(this);
}
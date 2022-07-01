import 'package:json_annotation/json_annotation.dart';
part 'custom_response.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class CustomResponse
{
  late int   status;
  late Object? payload;
  @JsonKey(defaultValue: '')
  late String? message;
  CustomResponse();

  factory CustomResponse.fromJson(Map<String, dynamic> json) =>
      _$CustomResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CustomResponseToJson(this);
 }
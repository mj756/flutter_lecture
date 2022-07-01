import 'package:json_annotation/json_annotation.dart';
part 'media.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class Media
{
  late int id ;
late String mediaName ;
late String mediaUrl ;
late String originalName ;
late String mediaType ;
late int advertisementId ;

  Media();
  factory Media.fromJson(Map<String, dynamic> json) =>
      _$MediaFromJson(json);

  Map<String, dynamic> toJson() => _$MediaToJson(this);

  static List<Media> fromJsonList(List<dynamic> jsonValue) {
    List<Media> medias = List.empty(growable: true);
    for (var value in jsonValue) {
      medias.add(Media.fromJson(value));
    }
    return medias;
  }
}
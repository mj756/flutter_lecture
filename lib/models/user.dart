import 'package:json_annotation/json_annotation.dart';
part 'user.g.dart';
@JsonSerializable(fieldRename: FieldRename.none)
class User
{
  late int id;
  late String firstName;
  late String? lastName;
  late String email;
  late String? mobile;
  late String userType;
  late String? address;
  @JsonKey(defaultValue:'')
  late String? password;
  late String userId;
  @JsonKey(defaultValue:'')
  late String? gender;
  @JsonKey(defaultValue:'')
  late String? profileImage;
  User();

  factory User.fromJson(Map<String, dynamic> json) =>
      _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
/*
  User.fromGoogleJson(google_user.User googleUser) {
    userId = googleUser.uid;
    firstName =googleUser.displayName ??'';
    lastName ='';
    gender =  '';
    email =googleUser.email??'';
    address ='';
    mobile =googleUser.phoneNumber ?? '';
    profileImage =googleUser.photoURL ?? '';
  }*//*
  User.fromMicrosoftJson( Map<String, dynamic> json) {
    id = json['UserId'] ?? '';
    firstName = json['UserName'] ?? '';
    lastName='';
    gender = json['Gender'] ?? '';
    email = json['UserEmail'] ?? '';
    address = json['Address'] ?? '';
    mobile = json['ContactNumber'] ?? '';
    profileImage = json['ProfileImage'] ?? '';
    password = '';
  }*/
}
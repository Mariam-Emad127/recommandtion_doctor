import 'package:freezed_annotation/freezed_annotation.dart';
part 'update_profile_response.g.dart';
@JsonSerializable()
class UpdateProfileResponse {
  String? message;
  Data? data;
  bool? status;
  int? code;

  UpdateProfileResponse({this.message, this.data, this.status, this.code});
  factory UpdateProfileResponse.fromJson(Map<String,dynamic>json)=> _$UpdateProfileResponseFromJson(json);
}
@JsonSerializable()
class Data {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;
  String? createdAt;
  String? updatedAt;

  Data(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.gender,
      this.createdAt,
      this.updatedAt});
      
       factory Data.fromJson(Map<String,dynamic>json)=> _$DataFromJson(json);
      }
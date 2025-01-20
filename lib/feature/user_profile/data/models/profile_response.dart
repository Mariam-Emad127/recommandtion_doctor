import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_response.g.dart';
@JsonSerializable()
class ProfileResponseModel {
  String? message;
  @JsonKey(name:"data")
  List<ProfilegetData>? userData;
  bool? status;
  int? code;

  ProfileResponseModel({this.message, this.userData, this.status, this.code});
  factory ProfileResponseModel.fromJson(Map<String,dynamic>json)=>_$ProfileResponseModelFromJson(json);
 
 }
@JsonSerializable()

class ProfilegetData {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? gender;

  ProfilegetData({this.id, this.name, this.email, this.phone, this.gender});
  factory ProfilegetData.fromJson(Map<String,dynamic>json)=>_$ProfilegetDataFromJson(json);

}
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_request_model.g.dart';
@JsonSerializable()
class ProfileRequestModel {
  String? name;
  String? email;
  String? phone;
  String? gender;
 String? password;

  ProfileRequestModel ({  this.name, this.email, this.phone, this.gender,this.password});
 Map<String,dynamic>toJson()=>_$ProfileRequestModelToJson(this);
}
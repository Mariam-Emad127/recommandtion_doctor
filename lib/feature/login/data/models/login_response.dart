import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.g.dart';
@JsonSerializable()
class LoginResponse {
  String? message;
  @JsonKey(name: 'data')
  LoginUserData? loginUserData;
  bool? status;
  int? code;
  LoginResponse({this.message, this.loginUserData, this.status, this.code});

factory LoginResponse.fromJson(Map<String,dynamic>json )=>_$LoginResponseFromJson(json);


}

@JsonSerializable()
class LoginUserData{
 String? token;
  @JsonKey(name: 'username')
  String? userName;
LoginUserData(this.token,this.userName);
factory LoginUserData.fromJson(Map<String,dynamic>json )=>_$LoginUserDataFromJson(json);


}


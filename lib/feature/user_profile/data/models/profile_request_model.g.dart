// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileRequestModel _$ProfileRequestModelFromJson(Map<String, dynamic> json) =>
    ProfileRequestModel(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      gender: json['gender'] as String?,
      password: json['password'] as String?,
    );

Map<String, dynamic> _$ProfileRequestModelToJson(
        ProfileRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phone': instance.phone,
      'gender': instance.gender,
      'password': instance.password,
    };

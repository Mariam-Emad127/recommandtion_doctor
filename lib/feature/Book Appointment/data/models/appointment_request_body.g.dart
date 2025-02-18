// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_request_body.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppointmentRequestBody _$AppointmentRequestBodyFromJson(
        Map<String, dynamic> json) =>
    AppointmentRequestBody(
      doctor_id: (json['doctor_id'] as num).toInt(),
      start_time: json['start_time'] as String,
    );

Map<String, dynamic> _$AppointmentRequestBodyToJson(
        AppointmentRequestBody instance) =>
    <String, dynamic>{
      'doctor_id': instance.doctor_id,
      'start_time': instance.start_time,
    };

import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_request_body.g.dart';
@JsonSerializable()
class AppointmentRequestBody {
  final int doctor_id;
  final String start_time;

  AppointmentRequestBody({required this.doctor_id, required this.start_time});
  Map<String,dynamic>toJson()=>_$AppointmentRequestBodyToJson(this);
}


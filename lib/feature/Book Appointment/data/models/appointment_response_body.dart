import 'package:freezed_annotation/freezed_annotation.dart';
part 'appointment_response_body.g.dart';
@JsonSerializable()
class AppointmentResponseBody {
  String? message;
  @JsonKey(name:"data")
  DoctorInfoCard? doctorInfoCard;
  bool? status;
  int? code;

  AppointmentResponseBody({this.message, this.doctorInfoCard, this.status, this.code});
factory AppointmentResponseBody.fromJson(Map<String,dynamic>json)=>_$AppointmentResponseBodyFromJson(json);
 
}
@JsonSerializable()

class DoctorInfoCard {
  int? id;
  Doctor? doctor;
  String? appointmentTime;
  String? appointmentEndTime;
  String? status;
  String? notes;
  @JsonKey(name: "appointment_price")
  int? appointmentPrice;

  DoctorInfoCard(
      {this.id,
      this.doctor,
      this.appointmentTime,
      this.appointmentEndTime,
      this.status,
      this.notes,
      this.appointmentPrice});
 factory DoctorInfoCard.fromJson(Map<String,dynamic>json)=>_$DoctorInfoCardFromJson(json);

}
@JsonSerializable()

class Doctor {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? photo;
  String? gender;
  String? address;
  String? description;
  String? degree;
  Specialization? specialization;
  City? city;
  int? appointPrice;
  String? startTime;
  String? endTime;

  Doctor(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.photo,
      this.gender,
      this.address,
      this.description,
      this.degree,
      this.specialization,
      this.city,
      this.appointPrice,
      this.startTime,
      this.endTime});
       factory Doctor.fromJson(Map<String,dynamic>json)=>_$DoctorFromJson(json);

 
}
@JsonSerializable()

class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});

  factory Specialization.fromJson(Map<String,dynamic>json)=>_$SpecializationFromJson(json);

}
@JsonSerializable()

class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
   factory City.fromJson(Map<String,dynamic>json)=>_$CityFromJson(json);

}

 
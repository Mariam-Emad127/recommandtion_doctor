 
import 'package:freezed_annotation/freezed_annotation.dart';
part 'doctor_response.g.dart';
@JsonSerializable()
class DoctorResponse {
  String? message;
  @JsonKey(name: "data")
  List<AllDoctorsModel>? doctorList;
  bool? status;
  int? code;

  DoctorResponse({this.message, this.doctorList, this.status, this.code});
  factory DoctorResponse.fromJson(Map<String,dynamic>json )=>_$DoctorResponseFromJson(json);

 
}
@JsonSerializable()
class AllDoctorsModel {
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
  @JsonKey(name:"appoint_price")
  int? appointPrice;
  @JsonKey(name:"start-time")
  String? startTime;
    @JsonKey(name:"end-time")
  String? endTime;

  AllDoctorsModel(
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

   factory AllDoctorsModel.fromJson(Map<String,dynamic>json )=>_$AllDoctorsModelFromJson(json);

}
@JsonSerializable()
class Specialization {
  int? id;
  String? name;

  Specialization({this.id, this.name});
   factory Specialization.fromJson(Map<String,dynamic>json )=>_$SpecializationFromJson(json);

}
@JsonSerializable()
class City {
  int? id;
  String? name;
  Specialization? governrate;

  City({this.id, this.name, this.governrate});
     factory City.fromJson(Map<String,dynamic>json )=>_$CityFromJson(json);

 
}

 